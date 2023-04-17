FROM linuxem/my-zsh-docker:2023-04-17

RUN pip3 install virtualenv virtualenvwrapper
ENV WORKON_HOME ~/.virtualenvs
ENV VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3 
RUN echo "export PATH=$PATH:/home/eli/.local/bin/" >> /home/eli/.zshrc
RUN echo "source /home/eli/.local/bin/virtualenvwrapper.sh" >> /home/eli/.zshrc
RUN /bin/zsh -c mkvirtualenv mlops
RUN echo "workon mlops" >> /home/eli/.zshrc
