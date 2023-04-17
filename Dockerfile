FROM linuxem/my-zsh-docker:2023-04-17

RUN pip3 install virtualenv virtualenvwrapper
RUN echo'./home/eli/.local/bin/virtualenvwrapper.sh' >> ~/.zshrc