from slacker import Slacker

SLACK_API_TOKEN = 'your-slack-api-token-goes-here'
SLACK_CHANNEL = '#general'

def lambda_handler(event, context):
    slack = Slacker(SLACK_API_TOKEN)
    slack.chat.post_message(SLACK_CHANNEL, 'Hello, world!')
