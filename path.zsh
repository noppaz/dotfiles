# Golang paths
export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Postgres.app binaries path
export PATH="/Applications/Postgres.app/Contents/Versions/12/bin:$PATH"

eval "$(pyenv init -)"
