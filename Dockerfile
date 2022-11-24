FROM mcr.microsoft.com/playwright:v1.27.0-focal
WORKDIR /app
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN curl -fsSL "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" -o /bin/pnpm; chmod +x /bin/pnpm;
RUN node -v
RUN pnpm install
COPY . .
ENV PORT=9323
CMD [ "npm", "test" ]