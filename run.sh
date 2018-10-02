#!/bin/bash
set -e

envsubst "`printf '${%s} ' $(bash -c "compgen -A variable")`" < appsettings.json.template > appsettings.json

dotnet VotingIrregularities.Api.dll