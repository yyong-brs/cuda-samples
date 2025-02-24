FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
RUN apt-get update && apt-get  install -yq cmake 

COPY . /cuda-samples
WORKDIR /cuda-samples
RUN mkdir -p /cuda-samples/build && \
  cd /cuda-samples/build && \
  cmake .. && \
  make -j$(nproc)
