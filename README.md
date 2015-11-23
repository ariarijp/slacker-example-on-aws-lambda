# Slacker example on AWS Lambda

## Requirements

* Python2.7(AWS Lambda does not support Python3)
* [Virtualenv](https://virtualenv.pypa.io/en/latest/)

## Usage

You have to edit `SLACK_API_TOKEN` variable in `lambda_function.py`.

```py:lambda_function.py
SLACK_API_TOKEN = 'your-slack-api-token-goes-here'
```

Next, Run these commands.

```sh
$ virtualenv .venv # For the first time only
$ source .venv/bin/activate
$ pip install -r requirements.txt
$ ./build.sh
```

Then, you'll find `lambda.zip` in `build` directory.

## Licence

MIT

## Author

[ariarijp](https://github.com/ariarijp)
