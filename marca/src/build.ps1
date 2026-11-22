# Genera marca/logo.svg y marca/logo.png a partir de la plantilla.
# Uso: powershell -File marca/src/build.ps1
param([string]$Font = "$PSScriptRoot\lora-italic-subset.woff2")

$dir  = Split-Path -Parent $PSScriptRoot   # marca/
# Trazo de la firma "Sm" (mismo estilo manuscrito del logo original)
$path = 'M235 345 C300 320 400 240 450 150 C468 115 462 88 442 96 C420 106 428 150 458 185 C492 225 498 285 440 318 C405 338 385 330 392 318 C400 304 450 300 495 318 C505 290 512 255 528 250 C545 246 550 268 550 290 C550 310 549 322 550 332 C555 290 568 252 588 250 C606 248 610 268 610 290 C610 310 608 322 612 332 C618 348 648 342 668 318'

$b64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes($Font))
$svg = (Get-Content -Raw -Encoding utf8 "$PSScriptRoot\logo.template.svg").Replace('{{FONT}}', $b64).Replace('{{PATH}}', $path)
[IO.File]::WriteAllText("$dir\logo.svg", $svg, (New-Object Text.UTF8Encoding $false))

# Avatar cuadrado: la misma laptop, sin la cinta, sobre fondo claro
$avatar = [regex]::Replace($svg, '(?s)<!-- Cinta con la frase.*?</g>\s*', '')
$avatar = $avatar.Replace('viewBox="0 0 900 560" width="900" height="560">', 'viewBox="70 -155 760 760" width="500" height="500"><rect x="70" y="-155" width="760" height="760" fill="url(#fondoAvatar)"/>')
[IO.File]::WriteAllText("$dir\avatar.svg", $avatar, (New-Object Text.UTF8Encoding $false))

# PNG (último fotograma de la animación)
$edge = "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
$tmp  = Join-Path $env:TEMP 'sm-edge'
$base = "file:///$($dir -replace '\\','/')"
& $edge --headless=new --disable-gpu --hide-scrollbars --user-data-dir=$tmp --default-background-color=00000000 `
  --virtual-time-budget=4500 --window-size=900,560 --screenshot="$dir\logo.png" "$base/logo.svg" 2>$null | Out-Null
& $edge --headless=new --disable-gpu --hide-scrollbars --user-data-dir=$tmp `
  --virtual-time-budget=4500 --window-size=500,500 --screenshot="$dir\avatar.png" "$base/avatar.svg" 2>$null | Out-Null
