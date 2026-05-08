delete_gh_workflow_runs() {
  local REPO_WITH_OWNER="$1"
  local WORKFLOW_NAME="$2"

  if [[ -z "$REPO_WITH_OWNER" || -z "$WORKFLOW_NAME" ]]; then
    echo "Usage: delete_gh_workflow_runs owner/repo workflow_name.yml"
    return 1
  fi

  gh run list -R "$REPO_WITH_OWNER" -w "$WORKFLOW_NAME" -L 100 --json databaseId -q '.[].databaseId'  |
    xargs -I ID gh run delete -R "$REPO_WITH_OWNER" ID
}


uvpy() {
  # Symlink a specific uv Python version to $HOME/.local/bin/python
  if [ "$#" -ne 1 ]; then
      echo "Usage: uvpy <python-version>"
      return 1
  fi

  PYTHON_VERSION=$1
  TARGET=$(uv python find --no-project --python-preference only-managed "$PYTHON_VERSION")
  if [ -z "$TARGET" ]; then
      echo "Error: Could not find the specified Python version."
      return 1
  fi

  LINK_PATH=$HOME/.local/bin/python
  echo "Creating symlink: $LINK_PATH -> $TARGET"
  ln -sf $TARGET $LINK_PATH
}
