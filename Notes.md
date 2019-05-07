### Git CheatSheet
```
git add -A
git commit -m "Initialize repository + Update Gemfile + Update README + Update gitignore + Add Procfile"

git checkout -b name-checkout
git checkout master
git merge name-checkout
git push

git commit -am "Add Home and Contact Pages + Routes"
```

### Rails CheatSheet

```
rails generate scaffold NAME [field[:type][:index] field[:type][:index]] [options] --pretend
```


Completed Commands
```
rails generate controller StaticPages home contact
```

TODO/Planning Commands
```
rails generate scaffold User name:string email:string:uniq password_digest:string remember_digest:string

rails generate migration add_admin_to_users admin:boolean

rails generate controller Users new



rails generate scaffold Course name:string description:text user_id:integer 

rails generate controller Sessions new

rails generate scaffold User name:string:uniq email:string:uniq
rails generate scaffold Category name:string
rails generate scaffold Location name:string

rails generate scaffold Course name:string description:text user_id:integer 

rails generate scaffold Micropost content:string user_id:integer


rails generate migration create_events_users user:references event:references
```