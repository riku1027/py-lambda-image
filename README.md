# py-lambda-image
## What this
This is lambda function container image bilerplate.
This can be used to easily launch a python container image.


## How to setup
First, open app.py and coding your process you want to run in aws lambda

```python
app.py

def lambda_handler(event, context):
    ## coding here ✌🏻
```

## How to try it
First, run it, and lambda function server starts. 
```bash
$ docker-compose up --build
```

Second, call lambda funcation using the curl command.
```bash
$ curl -X POST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"category_url":"https://www.cosme.com/amplitude/?brand_id=117062"}'
```


## How to set up CI and deploy
I'll skip this one.
See here for details.
>https://scrapbox.io/riku19981027-69787355/%E3%82%B3%E3%83%B3%E3%83%86%E3%83%8A%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8%E3%82%92%E5%88%A9%E7%94%A8%E3%81%97%E3%81%A6%E3%80%81Lambda%E9%96%A2%E6%95%B0%E3%82%92%E4%BD%9C%E3%82%8B


Environment variables to be set are as follows.
```bash
SLACK_WEBHOOK_URL ## set up this if you want to notify slack channel.
SLACK_CHANNEL ## set up this if you want to notify slack channel.
AWS_LAMBDA_FUNCTION_NAME
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
```
