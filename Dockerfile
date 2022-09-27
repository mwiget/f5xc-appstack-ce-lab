FROM alpine as builder
ADD --chown=107:107 centos-7.2009.5-202103011045.qcow2 /disk/ 
RUN chmod 0440 /disk/*

FROM scratch
COPY --from=builder /disk/* /disk/
