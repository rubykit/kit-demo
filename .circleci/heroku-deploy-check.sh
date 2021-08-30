# We only want to deploy if the subtree was changed.

path_repo=$(dirname $(dirname $(realpath $0)))
path_app="$path_repo/apps/app-container"

last_commit_repo=$(git log --pretty=tformat:"%H" -n1 $path_repo)
last_commit_app=$(git log --pretty=tformat:"%H" -n1 $path_app)

if [[ "$last_commit_repo" != "$last_commit_app" ]] ; then
  echo "Halted due to no change in container app"
  circleci step halt
fi
