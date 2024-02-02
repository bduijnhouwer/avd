##############################################################
#  Run the Virtual Desktop Optimization Tool (VDOT)
##############################################################
# https://github.com/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool

# Download VDOT
#$URL = 'https://github.com/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool/archive/refs/heads/main.zip'
#$ZIP = 'VDOT.zip'
#Invoke-WebRequest -Uri $URL -OutFile $ZIP -ErrorAction 'Stop'

# Extract VDOT from ZIP archive
#Expand-Archive -LiteralPath $ZIP -Force -ErrorAction 'Stop'
    
# Run VDOT
#& .\VDOT\Virtual-Desktop-Optimization-Tool-main\Windows_VDOT.ps1 -AcceptEULA -Restart


# Install WhatsApp
$WhatsAppURL = 'https://www.duijnhouwer.com/azure/install/whatsapp/WhatsAppDesktop_latest.Msixbundle'
Invoke-WebRequest -Uri $WhatsAppURL  -ErrorAction 'Stop'
& DISM.EXE /Online /Add-ProvisionedAppxPackage /PackagePath:.\WhatsAppDesktop_latest.Msixbundle /SkipLicense 2>&1
