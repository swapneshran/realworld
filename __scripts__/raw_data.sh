

#curl \
#  -H "Accept: application/vnd.github.v3+json" \
#  https://api.github.com/repos/swapneshran/realworld/actions/runs/42/logs


curl -X  GET \
  https://api.github.com/repos/swapneshran/realworld/actions/runs \
  -H 'authorization: token 12fe9e24c805c645f65b5547bee83f5c6d2f2c4d' \
  -H "Accept: application/vnd.github.v3+json" \
  -H 'cache-control: no-cache' \
  -H 'postman-token: 72d1d7fa-4cd7-a075-2a79-e6ba6f9dd5e0' \

#https://github.com/swapneshran/realworld/commit/1304a805d2e43b54148568d70660c7eb7fd1d715/checks/861936833/logs
