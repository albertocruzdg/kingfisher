FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine as builder
WORKDIR /source

COPY Kingfisher.API/. ./Kingfisher.API/

WORKDIR /source/Kingfisher.API/

RUN dotnet restore -r linux-musl-x64

RUN dotnet publish -c release -o /app -r linux-musl-x64 --self-contained true --no-restore \
	-p:PublishTrimmed=true -p:PublishReadyToRun=true -p:PublishReadyToRunShowWarnings=true

FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine as runtime

COPY --from=builder /app ./

ENV ASPNETCORE_URLS=http://+:5000

CMD ["./Kingfisher.API"]