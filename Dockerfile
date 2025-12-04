FROM activepieces/activepieces:latest

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost:3000/healthz || exit 1

CMD ["node", "/app/packages/server/dist/src/main.js"]
