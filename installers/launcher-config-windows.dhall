{   nodePath = "%DAEDALUS_DIR%/cardano-node.exe"
  , nodeArgs =
      [ "--update-latest-path"
      , "%APPDATA%/Daedalus/Installer.exe"
      , "--keyfile"
      , "%APPDATA%/Daedalus/Secrets-1.0/secret.key"
      , "--logs-prefix"
      , "%APPDATA%/Daedalus/Logs"
      , "--wallet-db-path"
      , "%APPDATA%/Daedalus/Wallet-1.0"
      , "--update-server"
      , "https://update-awstest.iohkdev.io"
      , "--update-with-package"
      , "--no-ntp"
      , "--tlscert"
      , "tls/server/server.crt"
      , "--tlskey"
      , "tls/server/server.key"
      , "--tlsca"
      , "tls/ca/ca.crt"
      , "--topology"
      , "wallet-topology.yaml" ]
  , nodeDbPath          = "%APPDATA%/Daedalus/DB-1.0"
  , nodeLogConfig       = "log-config-prod.yaml"
  , nodeLogPath         = "%APPDATA%/Daedalus/Logs/cardano-node.log"

  , walletPath          = "%DAEDALUS_DIR%/Daedalus.exe"
  , walletArgs          = [] : List Text

  , updaterPath         = "%APPDATA%/Daedalus/Installer.exe"
  , updaterArgs         = [] : List Text
  , updateArchive       = [] : Optional Text
  , updateWindowsRunner = ["%APPDATA%/Daedalus/Installer.bat"] : Optional Text

  , nodeTimeoutSec      = 30
  , reportServer        = "http://report-server.awstest.iohkdev.io:8080"
  , launcherLogsPrefix  = "%APPDATA%/Daedalus/Logs/pub"

  , configuration =
      { filePath    = "configuration.yaml"
      , key         = "mainnet_dryrun_wallet_win64"
      , systemStart = [] : Optional Integer
      , seed        = [] : Optional Integer
      }
} : ./launcher-config.schema