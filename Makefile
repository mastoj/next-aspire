start-aspire: # Starting the aspire dashboard
	docker run --rm -e DOTNET_DASHBOARD_UNSECURED_ALLOW_ANONYMOUS=true -p 18888:18888 -p 4317:18889 --name aspire-dashboard mcr.microsoft.com/dotnet/aspire-dashboard:8.0.0

start-app-dev: # Start app in dev mode with otel debugging
	OTEL_EXPORTER_OTLP_TRACES_PROTOCOL=grpc OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=http://localhost:4317/ OTEL_LOG_LEVEL=debug npm run dev