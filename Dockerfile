FROM python:3.12-slim

RUN pip install --no-cache-dir perplexity-web-mcp-cli

COPY mcp_http.py /opt/mcp_http.py

EXPOSE 8080
EXPOSE 8081

CMD ["sh", "-c", "python /opt/mcp_http.py & pwm api & wait"]
