# Anaconda path
export PATH="/usr/local/anaconda3/bin:$PATH"

# Golang paths
export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Postgres.app binaries path
export PATH="/Applications/Postgres.app/Contents/Versions/11/bin:$PATH"
