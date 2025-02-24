FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
RUN apt get install -yq wget && wget https://cmake.org/files/v3.20/cmake-3.20.6-linux-x86_64.sh
RUN  sudo bash cmake-3.20.6-linux-x86_64.sh --skip-license --prefix=/usr/local && sudo ln -sf /usr/local/bin/cmake /usr/bin/cmake

COPY . /cuda-samples
WORKDIR /cuda-samples
RUN mkdir -p /cuda-samples/build && \
  cd /cuda-samples/build && \
  cmake .. && \
  make -j$(nproc)
