#!/bin/bash
MSYS_NO_PATHCONV=1 docker run --name sql-server \
  --user root \
  -e 'ACCEPT_EULA=Y' \
  -e 'MSSQL_SA_PASSWORD=SuaSenhaForte@123' \
  -p 1433:1433 \
  -v "$(pwd)/sql-data":/var/opt/mssql/data \
  -v "$(pwd)/sql-log":/var/opt/mssql/log \
  -v "$(pwd)/sql-secrets":/var/opt/mssql/secrets \
  -d mcr.microsoft.com/mssql/server:2022-latest
