FROM microsoft/aspnetcore:2.0
WORKDIR /app
COPY bin/Debug/netcoreapp2.0/publish/ ./app
CMD ["dotnet", "TestJenkins.dll"]
