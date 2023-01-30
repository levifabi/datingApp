# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:7.0.102 AS build
WORKDIR /API

# copy csproj and restore as distinct layers
COPY ./*.csproj .
RUN dotnet restore 
#--use-current-runtime  

# copy everything else and build app
COPY ./. .
RUN dotnet publish -c release -o /app  --self-contained false --no-restore
#--use-current-runtime

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app .
EXPOSE 6001
EXPOSE 6002
ENTRYPOINT ["dotnet", "API.dll"]
