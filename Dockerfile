FROM wordpress:latest

# Copy the wait-for-it.sh script into the container
COPY wait-for-it.sh /usr/local/bin/wait-for-it.sh

# Ensure the script has execution permissions
RUN chmod +x /usr/local/bin/wait-for-it.sh

# Set the entrypoint to wait-for-it.sh
ENTRYPOINT ["wait-for-it.sh"]
