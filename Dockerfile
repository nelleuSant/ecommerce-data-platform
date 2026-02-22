FROM python:3.11-slim

WORKDIR /usr/app

RUN pip install --no-cache-dir dbt-duckdb

CMD ["bash"]