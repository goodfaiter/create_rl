# Base python image
FROM nvcr.io/nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04

# Install and update system dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python3-pip git nano mesa-utils

# Install basic python dependecies
RUN pip3 install --upgrade uv

# Create python env
RUN uv venv --python 3.12 --seed

# We work with local version but we do this here to pre-install dependencies of mjlab
RUN uv pip install git+https://github.com/google-deepmind/mujoco_warp@fb9bf88399796f161a4a2b129d846484da8a4ad0
RUN git clone https://github.com/mujocolab/mjlab.git
RUN uv pip install -e mjlab/
RUN rm -rf mjlab

# Add entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]