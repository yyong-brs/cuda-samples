FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
RUN apt-get update && apt-gey  install -yq cmake && mkdir build && cd build && cmake .. && make -j$(nproc)
