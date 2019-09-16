FROM nginx

COPY wrapper.sh /

COPY Selecao /usr/share/nginx/html

CMD ["./wrapper.sh"]
