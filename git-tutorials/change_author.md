# Изменить данные автора коммита по e-mail во всех коммитах репозитория 

```bash
git filter-repo --commit-callback '
	old_email = b"Your old email"
	correct_name = b"Your new name"
	correct_email = b"Your new email"
 
if commit.committer_email == old_email :
	commit.committer_name = correct_name
	commit.committer_email = correct_email
if commit.author_email == old_email : 
	commit.author_name = correct_name
	commit.author_email = correct_email
' --force
```
