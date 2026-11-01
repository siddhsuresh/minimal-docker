# Live-move e2e: four 2.5 GB layers of random data, so pushing the image to ECR takes long enough to move the sandbox mid-push.
FROM public.ecr.aws/docker/library/alpine:3.20
RUN head -c 2500000000 /dev/urandom > /blob1
RUN head -c 2500000000 /dev/urandom > /blob2
RUN head -c 2500000000 /dev/urandom > /blob3
RUN head -c 2500000000 /dev/urandom > /blob4
