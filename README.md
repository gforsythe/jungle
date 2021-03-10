# Jungle

A mini e-commerce application built with Rails 4.2.

```The following features were included :```

* login/signup with basic authentication
* credentials for admin to view the product and categories
* admin is able to generate new categories


## Screenshots
!["view-site"](https://github.com/gforsythe/jungle/blob/master/docs/View-Accounts.png?raw=true)

!["My-Cart"](https://github.com/gforsythe/jungle/blob/master/docs/My-Cart.png?raw=true)


!["Pay-Order"](https://github.com/gforsythe/jungle/blob/master/docs/Pay-Order.png?raw=true)

!["completed-order"](https://github.com/gforsythe/jungle/blob/master/docs/completed-order.png?raw=true)

!["sold-out-badge"](https://github.com/gforsythe/jungle/blob/master/docs/soldout-badge.png?raw=true)

!["admin-dashboard"](https://github.com/gforsythe/jungle/blob/master/docs/Admin-Dashboard.png?raw=true)

!["admin-categories"](https://github.com/gforsythe/jungle/blob/master/docs/Admin-Categories.png?raw=true)

!["admin-products"](https://github.com/gforsythe/jungle/blob/master/docs/Admin-All-Products.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
