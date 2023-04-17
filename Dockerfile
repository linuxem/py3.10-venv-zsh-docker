FROM linuxem/my-zsh-docker:2023-04-17

RUN pip3 install virtualenv virtualenvwrapper
ENV WORKON_HOME ~/.virtualenvs
RUN echo "source /home/eli/.local/bin/virtualenvwrapper.sh" >> /home/eli/.zshrc
RUN /bin/bash -c "mkvirtualenv mlops"
RUN echo "workon mlops" >> /home/eli/.zshrc
