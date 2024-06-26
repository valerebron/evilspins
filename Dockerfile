# INSTALL
FROM node:18-alpine as builder
WORKDIR /app
COPY . .
RUN npm ci && npm cache clean --force
ADD . .

# BUILD
RUN npm run build

# PROD
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/.output /app/.output
COPY --from=builder /app/.nuxt /app/.nuxt
COPY --from=builder /app/.env /app/.env
ENV HOST 0.0.0.0
EXPOSE 3000
RUN ls -lha /app/.output
CMD source .env && node .output/server/index.mjs
