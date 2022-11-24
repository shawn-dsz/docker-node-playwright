FROM mcr.microsoft.com/playwright:v1.27.0-focal
WORKDIR /app
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
# RUN apt update
RUN apt install nodejs
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# RUN curl -fsSL "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" -o /bin/pnpm; chmod +x /bin/pnpm;
# RUN pnpm install
# RUN wget https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
# RUN bash install.sh 
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# RUN . ~/.nvm/nvm.sh && nvm install 18 && nvm use 18
# RUN . ~/.nvm/nvm.sh && nvm install 18
# RUN . ~/.nvm/nvm.sh && nvm use 18
# RUN source ~/.bashrc
# RUN . /root/nvm.sh
# RUN nvm install 18
# RUN curl -fsSL https://deb.nodesource.com/setup_18.x 
# RUN wget https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh
# RUN bash install.sh

# RUN apt-get install -y nodejs=18
# RUN node -v
RUN curl -fsSL "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" -o /bin/pnpm; chmod +x /bin/pnpm;
RUN pnpm install
COPY . .
# ENV PORT=9323
CMD [ "npm", "test" ]