FROM alpine:3.4
RUN apk --update add ruby && rm -rf /var/cache/apk/*
CMD echo '* * * * * echo foobar' > /var/spool/cron/crontabs/root && crond -l 2 -f
