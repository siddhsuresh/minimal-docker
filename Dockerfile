FROM public.ecr.aws/lambda/nodejs:20

COPY lambda.js ${LAMBDA_TASK_ROOT}

CMD [ "lambda.handler" ]
