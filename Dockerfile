# Use the teddysun/xray image as the starting point
FROM teddysun/xray

# Copy the config.json file from the current directory into the container at /etc/xray/config.json
COPY config.json /etc/xray/config.json

# Expose port 8080
EXPOSE 8080

# Start the xray server with the specified configuration file
CMD ["xray", "-config", "/etc/xray/config.json"]
