FROM ubuntu
#RUN apt-get update && apt-get install -y dotnet6 ca-certificates

ARG BUILD_CONFIGURATION=Debug
ENV ASPNETCORE_ENVIRONMENT=Development
ENV DOTNET_USE_POLLING_FILE_WATCHER=true  
ENV ASPNETCORE_URLS=http://+:80  
EXPOSE 80

RUN apt-get update
RUN apt-get install -y \
    dotnet-sdk-6.0

WORKDIR /dockerdotnet
COPY web-api/bin/Debug/net6.0/publish/* .
EXPOSE 5000
#ENTRYPOINT ["dotnet", "/dockerdotnet/web-api.dll"]

