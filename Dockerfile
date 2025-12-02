# Base python image
FROM nvcr.io/nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04

# Install and update system dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python3-pip git mesa-utils

# Install basic python dependecies
RUN pip3 install --upgrade uv --break-system-packages

# Create python env
RUN uv venv --python 3.12 --seed
# ENV PATH="/.venv/bin:${PATH}"

# Install torch
# RUN pip install torch==2.9.0+cu130 torchvision==0.24.0+cu130 torchaudio==2.9.0+cu130 --index-url https://download.pytorch.org/whl/cu130

# Install basic python dependecies
RUN pip3 install --upgrade uv

# Install mujoco-warp
# RUN pip install git+https://github.com/google-deepmind/mujoco_warp@fb9bf88399796f161a4a2b129d846484da8a4ad0
# RUN git clone https://github.com/mujocolab/mjlab.git
# RUN cd mjlab && uv pip install --system -e .

# Add entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]