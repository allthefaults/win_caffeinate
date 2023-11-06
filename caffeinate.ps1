function Drink-Espresso {
    Write-Host "[info] Currently ordering a double shot of espresso..."

    $Signature=@"
[DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
public static extern void SetThreadExecutionState(uint esFlags);
"@

    $ES_DISPLAY_REQUIRED = [uint32]"0x00000002"
    $ES_CONTINUOUS = [uint32]"0x80000000"

    $JobName = "DrinkALotOfEspresso"

    try
    {
        $BackgroundJob = Start-Job -Name $JobName -ScriptBlock {
            $STES = Add-Type -MemberDefinition $args[0] -Name System -Namespace Win32 -PassThru

            $STES::SetThreadExecutionState($args[2] -bor $args[1])

            while ($true)
            {
                Start-Sleep -s 15
            }
        } -ArgumentList $Signature, $ES_DISPLAY_REQUIRED, $ES_CONTINUOUS

        Wait-Job $BackgroundJob
    }
    finally
    {
        Stop-Job -Name $JobName
        Remove-Job -Name $JobName
        Write-Host "[info] No more espressos left behind the counter."
    }
}