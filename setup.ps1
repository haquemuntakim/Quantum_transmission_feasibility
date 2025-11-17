Param(
  [switch]$Force
)

$ErrorActionPreference = 'Stop'

Write-Host 'Creating virtual environment (.venv)...'
if (Test-Path .venv -PathType Container) {
  if ($Force) { Remove-Item -Recurse -Force .venv }
}
python -m venv .venv

Write-Host 'Upgrading pip...'
.\.venv\Scripts\python -m pip install --upgrade pip

Write-Host 'Installing requirements...'
.\.venv\Scripts\pip install -r requirements.txt

Write-Host 'Done. Activate with:'
Write-Host '. .venv\Scripts\Activate.ps1'