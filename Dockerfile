FROM mcr.microsoft.com/mssql-tools

# install dependencies from ubuntu
RUN apt-get update && apt-get install -y netcat

# copy the scripts directory into the container
COPY ./WS-Rental-Solutions-database/scripts /WS-Rental-Solutions-database/scripts

# make the script executable
RUN chmod +x /WS-Rental-Solutions-database/scripts/scripts.sh

# set the entrypoint to the script
ENTRYPOINT ["/WS-Rental-Solutions-database/scripts/scripts.sh"]