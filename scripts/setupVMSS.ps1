[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); 

choco install filezilla -yr --no-progress

choco install git -yr --no-progress

choco install nodejs -yr --no-progress

# To install the MS C++ for Unreal engine app
choco install vcredit-all -yr --no-progress

# To install the directx
choco install directx -yr --no-progress


New-Alias -Name git -Value "$Env:ProgramFiles\Git\bin\git.exe"

$folder = "c:\Unreal\"
if (-not (Test-Path -LiteralPath $folder)) {
    git clone -q https://github.com/Azure/Unreal-Pixel-Streaming-on-Azure.git $folder
    }
    else {
        #rename the existing folder
            $endtag = 'unreal-' + (get-date).ToString(‘MMddyyhhmmss')
            Rename-Item -Path $folder  -NewName $endtag -Force
            git clone -q https://github.com/Azure/Unreal-Pixel-Streaming-on-Azure.git $folder
         }


