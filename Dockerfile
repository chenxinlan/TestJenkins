FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
COPY ${source:-bin/Debug/netcoreapp2.0/publish/} ./app
CMD ["dotnet", "TestJenkins.dll"]
