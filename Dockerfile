# Version arguments
ARG NODE_VERSION=22.5.1
ARG PNPM_VERSION=9.7.0
ARG ALPINE_VERSION=3.20

# Base stage
FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS base
RUN npm install -g pnpm@${PNPM_VERSION}
WORKDIR /app

# Dependencies stage
FROM base AS dependencies
COPY package.json pnpm-lock.yaml ./
RUN pnpm install

# Development stage
FROM dependencies AS development
ENV NODE_ENV=development
COPY . .
CMD ["pnpm", "run", "dev"]
