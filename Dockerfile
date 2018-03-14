FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Debug/netcoreapp2.0/publish/} ./app
ENTRYPOINT ["dotnet", "TestJenkins.dll"]
