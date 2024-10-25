./.vscode/LoadALLanguage.ps1;

$Path = Join-Path $PSScriptRoot '..' '..'

mkdir "$Path/AlDebugProject"
mkdir "$Path/AlDebugProject/.vscode"

touch "$Path/AlDebugProject/app.json"
printf '{\n' >> "$Path/AlDebugProject/app.json"
printf '  "id": "d700542d-5688-4e64-aecb-648fa385a652",\n' >> "$Path/AlDebugProject/app.json"
printf '  "name": "ALProject1",\n' >> "$Path/AlDebugProject/app.json"
printf '  "publisher": "Default Publisher",\n' >> "$Path/AlDebugProject/app.json"
printf '  "version": "1.0.0.0"\n' >> "$Path/AlDebugProject/app.json"
printf '}' >> "$Path/AlDebugProject/app.json"

touch "$Path/AlDebugProject/test.al"
printf 'codeunit 1 MyCodeunit\n' >> "$Path/AlDebugProject/test.al"
printf '{\n' >> "$Path/AlDebugProject/test.al"
printf '    trigger OnRun()\n' >> "$Path/AlDebugProject/test.al"
printf '    begin\n' >> "$Path/AlDebugProject/test.al"
printf '\n' >> "$Path/AlDebugProject/test.al"
printf '    end;\n' >> "$Path/AlDebugProject/test.al"
printf '}' >> "$Path/AlDebugProject/test.al"

touch "$Path/AlDebugProject/.vscode/settings.json"
printf '{\n' >> "$Path/AlDebugProject/.vscode/settings.json"
printf '    "al.codeAnalyzers": [' >> "$Path/AlDebugProject/.vscode/settings.json"
printf "        `"$(Join-Path $PSScriptRoot '..')/MsDyn365Bc.Custom.Analyzer/bin/Debug/netstandard2.1/CustomCodeCop.dll`"" >> "$Path/AlDebugProject/.vscode/settings.json"
printf '    ],' >> "$Path/AlDebugProject/.vscode/settings.json"
printf '    "al.enableCodeAnalysis": true' >> "$Path/AlDebugProject/.vscode/settings.json"
printf '}' >> "$Path/AlDebugProject/.vscode/settings.json"

code "$Path/AlDebugProject/"