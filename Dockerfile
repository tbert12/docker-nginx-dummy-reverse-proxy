FROM nginx

COPY default.conf.tmpl .
COPY entry.sh .

CMD ["bash", "entry.sh"]

