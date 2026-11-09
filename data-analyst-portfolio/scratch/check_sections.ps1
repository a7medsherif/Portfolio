$raw = Get-Content 'C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio\salla_extracted\Report\Layout' -Raw -Encoding Unicode
$json = $raw | ConvertFrom-Json

foreach ($sec in $json.sections) {
    Write-Output "PAGE: $($sec.displayName)"
    if ($sec.config) {
        $c = $sec.config | ConvertFrom-Json
        Write-Output "  Background: $($c.objects.background[0].properties.image.image.url.expr.ResourcePackageItem.ItemName)"
    }
}
