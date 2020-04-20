
FROM microsoft/aspnetcore-build:2.0.0  AS build
WORKDIR /src
COPY ["AspNetCoreOnDocker.csproj", ""]
RUN dotnet restore "./AspNetCoreOnDocker.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "AspNetCoreOnDocker.csproj" -c Release -o /app/build

