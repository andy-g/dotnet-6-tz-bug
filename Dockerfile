FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS publish
WORKDIR /src/
COPY . /src/
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
# This ENV can also be overidden at runtime
ENV TZ=Africa/Johannesburg
WORKDIR /app
COPY --from=publish /src/out ./
CMD ["dotnet", "dotnet-6-tz-bug.dll"]