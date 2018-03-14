FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/publish} ./hello
ENTRYPOINT ["dotnet", "TestJenkins.dll"]
