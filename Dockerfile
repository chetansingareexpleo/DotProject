FROM ubuntu
#RUN apt-get update && apt-get install -y dotnet6 ca-certificates

RUN apt-get update
RUN apt-get install -y \
    dotnet-sdk-6.0

WORKDIR /dockerdotnet
COPY web-api/bin/Debug/net6.0/publish/* .
#EXPOSE 5001
#ENTRYPOINT ["dotnet", "/dockerdotnet/web-api.dll"]

