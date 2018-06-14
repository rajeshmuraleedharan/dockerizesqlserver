FROM microsoft/aspnetcore:2.0-nanoserver-sac2016 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/aspnetcore-build:2.0-nanoserver-sac2016 AS build
WORKDIR /src
COPY aspnetcoredemo/aspnetcoredemo.csproj aspnetcoredemo/
RUN dotnet restore aspnetcoredemo/aspnetcoredemo.csproj
COPY . .
WORKDIR /src/aspnetcoredemo
RUN dotnet build aspnetcoredemo.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish aspnetcoredemo.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "aspnetcoredemo.dll"]
