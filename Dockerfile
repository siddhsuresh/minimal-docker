FROM public.ecr.aws/lambda/nodejs:20

COPY lambda.js ${LAMBDA_TASK_ROOT}

ENV AWS_LAMBDA_EXEC_WRAPPER="/opt/importenv"

CMD [ "lambda.handler" ]
