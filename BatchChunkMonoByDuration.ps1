# TODO - Update this path to match where your files are stored
$filesToProcess = Get-ChildItem -Path C:\Users\mastan\Downloads\Work\Tools\ffmpeg-20190909-976617c-win64-static\bin\Audio\*.wav -Name

foreach ($monoFile in $filesToProcess) {
    $oldFileNameWithoutExtension = $monoFile.substring(0, $monoFile.Length - 9)
    $monoFile = "$($oldFileNameWithoutExtension)-mono.wav"
    $outputDirectory = "$oldFileNameWithoutExtension-parts"

    mkdir $outputDirectory

    # Change 30 to any duration you'd like (in seconds)
    ffmpeg -i $monoFile -f segment -segment_time 30 -c copy "$outputDirectory/$oldFileNameWithoutExtension-part%03d.wav"
}
