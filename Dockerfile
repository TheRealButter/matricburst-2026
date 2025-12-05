FROM activepieces/activepieces:latest

EXPOSE 8080

# Health check on /healthz for Railway
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:8080/healthz || exit 1

# Run with correct port & queue mode
CMD ["sh", "-c", "AP_QUEUE_MODE=MEMORY AP_PORT=8080 yarn start:prod"]
