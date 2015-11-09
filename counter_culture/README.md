== README

This README would normally document whatever steps are necessary to get the
application up and running.

https://github.com/magnusvk/counter_culture

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration
```
bundle install
```

* Database creation
```
rake db:create
```

* Database initialization
```
rake db:migrate
```

* How to run

```
rails console
c1 = Category.create(name: 'c1')
Product.create(category_id: c1.id, name: 'p1')
Product.create(category_id: c1.id, name: 'p2')
Product.create(category_id: c1.id, name: 'p3')
Category.first.products
Category.first
```
```
Product.counter_culture_fix_counts
```
