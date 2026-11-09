$path = 'C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio\salla_extracted\Report\Layout'
$json = Get-Content $path -Raw -Encoding Unicode | ConvertFrom-Json

foreach ($sec in $json.sections) {
    Write-Output "PAGE: $($sec.displayName)"
    foreach ($vc in $sec.visualContainers) {
        if ($vc.config) {
            $cfg = $vc.config | ConvertFrom-Json
            if ($cfg.singleVisual) {
                $type = $cfg.singleVisual.visualType
                Write-Output "  - Visual: $type"
            }
        }
    }
}
