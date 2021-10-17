user_name = ""
repo_name = ""

user_name = input("Enter GitHub username: ")
repo_name = input("Enter GitHub repossitory name: ")

badges_raw = f"""<p align="center">
  <a href="https://github.com/{user_name}/{repo_name}/blob/main/LICENSE" target="_blank"> <img alt="license" src="https://img.shields.io/github/license/{user_name}/{repo_name}?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/{user_name}/{repo_name}/releases/latest" target="_blank"> <img alt="last release" src="https://img.shields.io/github/v/release/{user_name}/{repo_name}?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/{user_name}/{repo_name}/commits/main" target="_blank"> <img alt="last commit" src="https://img.shields.io/github/last-commit/{user_name}/{repo_name}?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/{user_name}/{repo_name}/graphs/contributors" target="_blank"> <img alt="commit activity" src="https://img.shields.io/github/commit-activity/m/{user_name}/{repo_name}?style=for-the-badge&labelColor=090909"></a>
</p>"""

print(badges_raw)
