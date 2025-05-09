# Task 21
## Blade Templates and how it works
Blade is the simple, yet powerful templating engine that is included with Laravel. Unlike some PHP templating engines, Blade does not restrict you from using plain PHP code in your templates. In fact, all Blade templates are compiled into plain PHP code and cached until they are modified, meaning Blade adds essentially zero overhead to your application. Blade template files use the .blade.php file extension and are typically stored in the resources/views directory.

Blade views may be returned from routes or controllers using the global view helper. Of course, as mentioned in the documentation on views, data may be passed to the Blade view using the view helper's second argument.

## What is the ORM ,why it is so useful
Object Relational Mapping (ORM) is a technique used in creating a "bridge" between object-oriented programs and, in most cases, relational databases.

Put another way, you can see the ORM as the layer that connects object oriented programming (OOP) to relational databases.

When interacting with a database using OOP languages, you'll have to perform different operations like creating, reading, updating, and deleting (CRUD) data from a database. By design, you use SQL for performing these operations in relational databases.

While using SQL for this purpose isn't necessarily a bad idea, the ORM and ORM tools help simplify the interaction between relational databases and different OOP languages.

# Task 22
## Defining relationships in Eloquent models
We can define relations with respect to the model we are defining it in. for example if we have a User model and a Post model we can do it like this:
```
class User extends Model
{
    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
```

and the post model
```
class Post extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
```
this is a one to many relationship.

# Task 23
## What is the XSRF or CSRF ... is there a difference between them??
They refer to literally the exact same concept: Cross Site Request Forgery.
Cross-site request forgery (also known as CSRF) is a web security vulnerability that allows an attacker to induce users to perform actions that they do not intend to perform. It allows an attacker to partly circumvent the same origin policy, which is designed to prevent different websites from interfering with each other.

## What is Livewire?
A full-stack framework in Laravel that makes it easy to create reactive interfaces without writing any JavaScript. This means that users can enjoy a smoother, more fluid experience when interacting with web applications built using Livewire like it was with other front-end frameworks.

## Give examples and explain them in 3 lines at least about 5 packages that are most use
- Laravel Debugbar	Adds a developer toolbar for debugging purposes.
- Laravel Backup	Creates backups of your application files and database.
- Entrust	Provides role-based permissions for your application.
- jwt-auth   JSON Web Token Authentication for Laravel & Lumen.
- Bagisto	Open-source Laravel ecommerce package.

# Resources
- [PortSwigger](https://portswigger.net/web-security/csrf)


