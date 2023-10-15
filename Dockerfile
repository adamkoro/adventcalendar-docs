FROM registry.suse.com/bci/nodejs:18-10.2 as builder
COPY ./ /app
WORKDIR /app
RUN npm install && npm run build

FROM registry.suse.com/bci/nodejs:18-10.2
USER root
RUN echo "user:x:10000:10000:user:/home/user:/bin/bash" >> /etc/passwd && mkdir /home/user
USER user
ENV NUXT_PORT=3000
COPY --from=builder /app/.output /home/user/app
WORKDIR /home/user/app
EXPOSE ${NUXT_PORT}
ENTRYPOINT ["node","server/index.mjs"]