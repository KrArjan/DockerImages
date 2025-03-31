#!/bin/bash
TZ=${TZ:-Asia/Kolkata}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Hibernate Plugin Data
PLUGIN_PATH="/home/container/plugins"
PLUGIN_NAME="DO-NOT-REMOVE.jar"
PLUGIN_URL="https://raw.githubusercontent.com/KrArjan/DockerImages/main/HibernatePlugins/Hibernate-2.1.0.jar"

# Ensure the plugins directory exists
mkdir -p "$PLUGIN_PATH"

# Plugin check
if [ ! -f "$PLUGIN_PATH/$PLUGIN_NAME" ]; then
    echo "Required plugin missing. Reinstalling..."
    curl -fsSL "$PLUGIN_URL" -o "$PLUGIN_PATH/$PLUGIN_NAME"
    chmod 444 "$PLUGIN_PATH/$PLUGIN_NAME"
fi

# Switch to the container's working directory
cd /home/container || exit 1

# Print Java version
printf "\033[1m\033[33mcontainer@VoltroCloud~ \033[0mjava -version\n"
java -version

# Convert all of the "{{VARIABLE}}" parts of the command into the expected shell
# variable format of "${VARIABLE}" before evaluating the string and automatically
# replacing the values.
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")

# Display the command we're running in the output, and then execute it with the env
# from the container itself.
printf "\033[1m\033[33mcontainer@VoltroCloud~ \033[0m%s\n" "$PARSED"
# shellcheck disable=SC2086
exec env ${PARSED}
