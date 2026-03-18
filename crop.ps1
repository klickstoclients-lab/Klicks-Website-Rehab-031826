Add-Type -AssemblyName System.Drawing
$bmp = New-Object System.Drawing.Bitmap 'KlicksNewSitePoint.png'
$size = $bmp.Height
$rect = New-Object System.Drawing.Rectangle 0, 0, $size, $size
$bmpCrop = $bmp.Clone($rect, $bmp.PixelFormat)
$bmpCrop.Save('favicon.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmpCrop.Dispose()
$bmp.Dispose()
Write-Output 'Success'
