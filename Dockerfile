FROM public.ecr.aws/lambda/nodejs:20

RUN echo "Environment variables at this stage:" && printenv

COPY lambda.js ${LAMBDA_TASK_ROOT}

CMD [ "lambda.handler" ]
