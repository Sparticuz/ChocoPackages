# Kill networx before upgrade or uninstall
$proc = Get-Process networx -ErrorAction SilentlyContinue
if ($proc) {
    # try gracefully first
    $proc.CloseMainWindow()
    # kill after five seconds
    Start-Sleep 5
    if (!$proc.HasExited) {
        $proc | Stop-Process -Force
    }
}
Remove-Variable proc