{   nodePath = "./cardano-node"
  , nodeArgs =
      [ "--update-latest-path"
      , "$HOME/Library/Application Support/Daedalus/installer.pkg"
      , "--keyfile"
      , "$HOME/Library/Application Support/Daedalus/Secrets-1.0/secret.key"
      , "--logs-prefix"
      , "$HOME/Library/Application Support/Daedalus/Logs"
      , "--wallet-db-path"
      , "$HOME/Library/Application Support/Daedalus/Wallet-1.0"
      , "--update-server"
      , "https://update-awstest.iohkdev.io"
      , "--update-with-package"
      , "--no-ntp"
      , "--tlscert"
      , "./tls/server/server.crt"
      , "--tlskey"
      , "./tls/server/server.key"
      , "--tlsca"
      , "./tls/ca/ca.crt"
      , "--topology"
      , "./wallet-topology.yaml" ]
  , nodeDbPath          = "$HOME/Library/Application Support/Daedalus/DB-1.0"
  , nodeLogConfig       = "log-config-prod.yaml"
  , nodeLogPath         = "$HOME/Library/Application Support/Daedalus/Logs/cardano-node.log"

  , walletPath          = "./Frontend"
  , walletArgs          = [] : List Text

  , updaterPath         = "/usr/bin/open"
  , updaterArgs         = ["-FW"]
  , updateArchive       = ["$HOME/Library/Application Support/Daedalus/installer.pkg"] : Optional Text
  , updateWindowsRunner = [] : Optional Text

  , nodeTimeoutSec      = 30
  , reportServer        = "http://report-server.awstest.iohkdev.io:8080"
  , launcherLogsPrefix  = "$HOME/Library/Application Support/Daedalus/Logs/pub/"

  , configuration =
      { filePath    = "./configuration.yaml"
      , key         = "mainnet_dryrun_wallet_macos64"
      , systemStart = [] : Optional Integer
      , seed        = [] : Optional Integer
      }
} : ./launcher-config.schema
