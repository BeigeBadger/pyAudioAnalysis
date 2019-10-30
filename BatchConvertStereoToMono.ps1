# TODO - Update this path to match where your files are stored
$filesToProcess = Get-ChildItem -Path C:\Users\mastan\Downloads\Work\Tools\ffmpeg-20190909-976617c-win64-static\bin\Audio\*.wav -Name

foreach ($stereoFile in $filesToProcess) {
    $oldFileNameWithoutExtension = $stereoFile.substring(0, $stereoFile.Length - 4)
    $monoFile = "$($oldFileNameWithoutExtension)-mono.wav"

    ffmpeg -i $stereoFile -ac 1 $monoFile
}
