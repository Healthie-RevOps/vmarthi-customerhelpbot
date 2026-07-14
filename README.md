# Healthie Help Bot

Answers customer questions in Slack using only help.gethealthie.com.

## Run locally (pilot)
    pip install -r requirements.txt
    export SLACK_BOT_TOKEN=xoxb-...
    export SLACK_APP_TOKEN=xapp-...
    export ANTHROPIC_API_KEY=sk-ant-...
    export WATCHED_CHANNELS=C0XXXXXXX   # comma-separated channel IDs; empty = all joined channels
    python healthie_help_bot.py

## Deploy (Railway / Render / Fly)
1. Push this folder to a GitHub repo
2. New project -> deploy from repo (Dockerfile auto-detected)
3. Set the same four env vars in the dashboard
4. Health check path: /healthz on port 8080
5. Enable auto-restart (default on Railway/Render)

## Files
- healthie_help_bot.py — the entire bot
- unanswered_questions.csv — written at runtime; gate skips + errors (content backlog for help docs)

## Slack app requirements
Socket Mode ON (app token scope: connections:write only)
Bot scopes: chat:write, channels:history, groups:history, users:read
Bot events: message.channels, message.groups
Invite the bot to each watched channel.
