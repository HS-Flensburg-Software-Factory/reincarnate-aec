FROM ubuntu:bionic AS build

RUN apt-get update \
	&& apt-get install -y --no-install-recommends autoconf parallel git git-lfs \
		graphviz gnuplot ocaml opam libgmp-dev libmpfr-dev \
        wget ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd -s /bin/bash -m -g users user
USER user

RUN opam init \
	&& echo "will cite" | parallel --citation

RUN eval `opam config env` \
	&& opam install mlgmpidl zarith hashcons menhir js_of_ocaml js_of_ocaml-ocamlbuild

COPY --chown=user . /home/user/reincarnate-aec/
WORKDIR /home/user/reincarnate-aec/src/

RUN eval `opam config env` \
	&& make -j default \
    && OCBFLAGS="-tag debug" JSCFLAGS="--source-map -q" make -j ide \
    && mv JSLib.js JSLib.map ide/

RUN mv _build/Main.native . \
    && rm -rf _build/ \
	&& rm aec/compiled-meshes/*/*.*

# final
FROM ubuntu:bionic

RUN apt-get update \
    && apt-get install -y --no-install-recommends libgmp-dev libmpfr-dev python3 nano vim \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -s /bin/bash -m -g users user
USER user

COPY --from=build --chown=user /home/user/reincarnate-aec/ /home/user/

WORKDIR /home/user/src/

ENTRYPOINT [ "sh", "-c", "cd ide/; python3 -m http.server 3000" ]
