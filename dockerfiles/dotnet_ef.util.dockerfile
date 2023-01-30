FROM mcr.microsoft.com/dotnet/sdk:7.0.102

RUN dotnet tool install --global dotnet-ef --version 7.0.2
ENV PATH="$PATH:/root/.dotnet/tools"

WORKDIR /DatingApp

ENTRYPOINT [ "dotnet","ef" ]