# Change to the directory where the executable and other files are located
Set-Location "..\air2water-master"

# Define the paths to the files (now relative to the new location)
$coordinatesFile = "Garda\coordinates.txt"
$inputFile = "input.txt"
$executable = "air2water_v2.0.exe"

# Read the coordinates from the file
$coordinates = Get-Content $coordinatesFile

# Loop through each line in the coordinates file
foreach ($coordinate in $coordinates) {
    $parts = $coordinate -split '_'
    $lat = $parts[0]
    $lon = $parts[1]

    # Create the new content for the input file
    $inputContent = @"
! Input file
Garda                ! name of the lake, river, ... 
$lat                 ! name/ID of the air station 
$lon                 ! name/ID of the water station 
c                    ! type of series: c=continuous, m=mean year 
1d                   ! time resolution: 1d=daily, nw=n weeks (n=1,2,...), 1m=monthly 
4                    ! version: 1=a2w 4 par; 2=a2w 6 par, 3=a2w 8 par 
0                    ! Threshold temperature for ice formation 
RMS                  ! objective function: KGE, NSE, RMS 
CRN                  ! numerical model: CRN, RK2, RK4 or EUL  
PSO                  ! PSO, FORWARD, LATHYP 
0.01                 ! minimum percentage of data: 0...1  
500                  ! nrun 
999                  ! mineff_index  
1                    ! log_flag  
0.9                  ! Courant number 
"@

    # Write the new content to the input file
    Set-Content -Path $inputFile -Value $inputContent

    # Add a delay before running the executable
    #Start-Sleep -Seconds 1

    # Run the executable and wait for it to finish
    Start-Process -FilePath $executable -Wait

    Write-Output "Processed row with lat: $lat and lon: $lon"
}

Write-Output "All rows processed."