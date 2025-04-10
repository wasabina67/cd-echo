FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl \
    git \
    openssh-server \
    vim

ARG USER_NAME=user
ARG GROUP_NAME=user
ARG U_ID=3103
ARG G_ID=3103

RUN groupadd -g ${G_ID} ${GROUP_NAME} && \
    useradd -m -s /bin/bash -u ${U_ID} -g ${G_ID} ${USER_NAME}

COPY .bashrc /tmp/.bashrc
RUN chown ${U_ID}:${G_ID} /tmp/.bashrc && \
    mv /tmp/.bashrc /home/${USER_NAME}/.bashrc

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}

CMD ["bash"]
