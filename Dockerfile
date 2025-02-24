FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
RUN apt update && apt install cmake && mkdir build && cd build && cmake .. && make -j$(nproc)
