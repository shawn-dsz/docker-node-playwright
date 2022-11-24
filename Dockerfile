FROM mcr.microsoft.com/playwright:v1.27.0-focal
WORKDIR /app
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt install nodejs
RUN curl -fsSL "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" -o /bin/pnpm; chmod +x /bin/pnpm;
RUN pnpm install
COPY . .
CMD [ "npm", "test" ]