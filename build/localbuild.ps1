param (
  [int]$BUILD_NUMBER
)

$HOST_COMMIT=$(git rev-list -1 HEAD)
dotnet publish  /p:BuildNumber=$BUILD_NUMBER /p:CommitHash=$HOST_COMMIT ../src/WebJobs.Script.WebHost/WebJobs.Script.WebHost.csproj --output /azure-functions-host --runtime win-x64