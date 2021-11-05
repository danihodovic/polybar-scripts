#!/usr/bin/bash
task="$(task +ACTIVE -DELETED export rc.json.array=off 2> /dev/null)"
task_description=$(echo "$task" | jq -r '"\(.description)(\(.id))"')
echo "%{F#00ff00}✔ $task_description"
