FROM alpine:3.14.1

WORKDIR ./opt

COPY ck-server-linux-amd64-v2.9.0 .
COPY ckserver.json .

RUN chmod +x ck-server-linux-amd64-v2.9.0

EXPOSE 443/tcp
	
ENTRYPOINT ["./ck-server-linux-amd64-v2.9.0", "-c", "ckserver.json"]