FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Debug/netcoreapp1.1/publish/} ./app
ENTRYPOINT ["dotnet", "TestJenkins.dll"]
