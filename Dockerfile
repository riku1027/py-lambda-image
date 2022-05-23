FROM public.ecr.aws/lambda/python:3.8

# Install package
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy code
COPY app.py ${LAMBDA_TASK_ROOT}
COPY libs/ ${LAMBDA_TASK_ROOT}/libs/

CMD ["app.lambda_handler"]
