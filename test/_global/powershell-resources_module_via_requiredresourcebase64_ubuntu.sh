#!/bin/bash

set -e
source dev-container-features-test-lib

pwsh -c 'Get-PSResource -Scope AllUsers'
check "ChangelogManagement Latest" pwsh -c '$Results = Get-PSResource -Scope AllUsers -Name ChangelogMangement; if (!$Results) { throw }'

reportResults