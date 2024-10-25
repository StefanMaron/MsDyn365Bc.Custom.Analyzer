./.vscode/LoadALLanguage.ps1;

mkdir ../AlDebugProject

touch ../AlDebugProject/app.json
printf '{\n' >> ../AlDebugProject/app.json
printf '  "id": "d700542d-5688-4e64-aecb-648fa385a652",\n' >> ../AlDebugProject/app.json
printf '  "name": "ALProject1",\n' >> ../AlDebugProject/app.json
printf '  "publisher": "Default Publisher",\n' >> ../AlDebugProject/app.json
printf '  "version": "1.0.0.0"\n' >> ../AlDebugProject/app.json
printf '}' >> ../AlDebugProject/app.json

touch ../AlDebugProject/test.al
printf 'codeunit 1 MyCodeunit\n' >> ../AlDebugProject/test.al
printf '{\n' >> ../AlDebugProject/test.al
printf '    trigger OnRun()\n' >> ../AlDebugProject/test.al
printf '    begin\n' >> ../AlDebugProject/test.al
printf '\n' >> ../AlDebugProject/test.al
printf '    end;\n' >> ../AlDebugProject/test.al
printf '}' >> ../AlDebugProject/test.al

touch ../AlDebugProject/.vscode/settings.json
printf '{\n' >> ../AlDebugProject/.vscode/settings.json
printf '    "al.codeAnalyzers": [' >> ../AlDebugProject/.vscode/settings.json
printf '        "/workspaces/BusinessCentral.LinterCop/BusinessCentral.LinterCop/bin/Debug/netstandard2.1/BusinessCentral.LinterCop.dll"' >> ../AlDebugProject/.vscode/settings.json
printf '    ],' >> ../AlDebugProject/.vscode/settings.json
printf '    "al.enableCodeAnalysis": true' >> ../AlDebugProject/.vscode/settings.json
printf '}' >> ../AlDebugProject/.vscode/settings.json

code ../AlDebugProject/