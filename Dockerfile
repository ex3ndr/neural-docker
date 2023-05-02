FROM paperspace/gradient-base:pt112-tf29-jax0317-py39-20230125

# Mujoco
RUN wget https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz
RUN mkdir -p /root/.mujoco/mujoco210
RUN tar -xvf mujoco210-linux-x86_64.tar.gz -C /root/.mujoco/

# Dependencies
RUN apt-get install -y swig
RUN pip install ffmpeg --upgrade
RUN pip install gymnasium[all]

# Env Variables
RUN export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mujoco210/bin