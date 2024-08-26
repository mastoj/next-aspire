1. Run `make start-aspire` in one terminal. This starts aspire dashboard and should be available on http://localhost:18888
2. Start app with `make start-app-dev`. This should start the app in dev mode with OTEL config and debug.

In the aspire dashboard I would expect data to be visible, but I don't see anything. When visiting http://localhost:3000 you will instead get a `@vercel/otel/otlp: onSuccess 400 Bad Request` message.