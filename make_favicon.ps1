Add-Type -AssemblyName System.Drawing

$imgPath   = 'c:\Users\Jeff\.gemini\antigravity\scratch\klicks_to_clients\KlicksNewSitePoint.png'
$outPath   = 'c:\Users\Jeff\.gemini\antigravity\scratch\klicks_to_clients\favicon.png'

$src   = [System.Drawing.Image]::FromFile($imgPath)
$size  = $src.Height
$bmp   = New-Object System.Drawing.Bitmap $size, $size
$g     = [System.Drawing.Graphics]::FromImage($bmp)

$g.Clear([System.Drawing.Color]::FromArgb(255, 8, 19, 31))
$g.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $size, $size))
$g.Dispose()
$src.Dispose()

$bmp.Save($outPath, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()

Write-Output "Done: favicon.png saved with dark background."
