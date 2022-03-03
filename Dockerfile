FROM nginx:alpine
COPY ./os-env.sh /
RUN chmod +x /os-env.sh
RUN sh os-env.sh
