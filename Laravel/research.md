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


