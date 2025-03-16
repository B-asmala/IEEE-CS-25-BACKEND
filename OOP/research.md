# Task 1
## who invent OOP and why
Alan Kay coined the term “object oriented programming” at grad school in 1966 or 1967. The big idea was to use encapsulated mini-computers in software which communicated via message passing rather than direct data sharing — to stop breaking down programs into separate “data structures” and “procedures”.

## Encapsulation & Abstraction
Abstraction and Encapsulation are two of the fundamental concepts in OOP. 
- Encapsultion is the concept of binding data and methods and preventing it from unauthorized access. It wraps up data and functions under a single unit. Another way to think about encapsulation is, that it is a protective shield that prevents the data from being accessed by the code outside this shield.

- Data Abstraction is the property by virtue of which only the essential details are displayed to the user. The trivial or the non-essential units are not displayed to the user. Ex: A car is viewed as a car rather than its individual components. Data Abstraction may also be defined as the process of identifying only the required characteristics of an object ignoring the irrelevant details. The properties and behaviors of an object differentiate it from other objects of similar type and also help in classifying/grouping the objects. 

## Inheritance
When a class derives from another class. The child class will inherit all the public and protected properties and methods from the parent class. In addition, it can have its own properties and methods. An inherited class is defined by using the extends keyword.
![example](inheritance.png)

## PHP Interfaces & Polymorphism
Interfaces allow you to specify what methods a class should implement.
Interfaces make it easy to use a variety of different classes in the same way. When one or more classes use the same interface, it is referred to as "polymorphism".
Example :

```
<?php
interface InterfaceName {
  public function someMethod1();
  public function someMethod2($name, $color);
  public function someMethod3() : string;
}
?>
```
Polymorphism in PHP is implemented using the interface pattern. Think about interface as the skeleton or blueprint for your class which implements it. The above code has an interface named shapesInterface. An interface can define method names and arguments, but not the contents of the methods.
PHP uses dynamic binding to determine which method implementation to execute at runtime based on the object type. When a method is called on an object, PHP resolves the method implementation based on the object's actual class type.

## PHP Traits
Traits are used to declare methods that can be used in multiple classes. Traits can have methods and abstract methods that can be used in multiple classes, and the methods can have any access modifier (public, private, or protected).

Traits are declared with the trait keyword:
```
<?php
trait TraitName {
  // some code...
}
?>
```
To use a trait in a class, use the use keyword:
```
<?php
class MyClass {
  use TraitName;
}
?>
```

# Task 2
## Late static binding & how it works
During the compile time, the normal variables are replaced with their values but the static keywords are replaced only in the run time. Overriding a property in child class and creating the instance of the child class, so to get the overridden output, the late static binding concept is used by writing static keyword before using the property. Whenever a PHP interpreter gets the request to compile a function. If it sees any static property, then it leaves the property pending for run time and the property gets its value during runtime from the function it is being called. This is called late static binding.

## Using OOP with MySQL (PDO & MySQLi)
- MySQLi: The ‘i’ in MySQLi stands for Improved. Therefore, this is also known as the improved version of MySQL.
Example (Object Oriented style) :
Open a new connection to the MySQL server:
```
<?php
$mysqli = new mysqli("localhost","my_user","my_password","my_db");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
?>
```
- PDO – PHP Data Objects: The main advantage of using PDO is that it supports, and provides a uniform method of access to 11 different databases.
Example : 
```
<?php
$servername = "localhost";
$username = "username";
$password = "password";

try {
  $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>
```

## Factory Pattern
The Factory Pattern is a creational design pattern that provides an interface for creating instances of classes, with its subclasses deciding which class to instantiate. Instead of calling a class’s constructor directly, a factory method is used to create the object, abstracting the instantiation process and promoting a loose coupling between classes.
Example :
```
class Doll {
    public function getDescription() {
        return "This is a doll.";
    }
}

class Robot {
    public function getDescription() {
        return "This is a robot.";
    }
}

class Car {
    public function getDescription() {
        return "This is a car.";
    }
}
```

Now, we’ll create our toy factory:
```
class ToyFactory {
    public function getToy($toyType) {
        switch ($toyType) {
            case "doll":
                return new Doll();
            case "robot":
                return new Robot();
            case "car":
                return new Car();
            default:
                throw new Exception("Invalid toy type");
        }
    }
}
```
Using the factory is simple:
```
$factory = new ToyFactory();

$doll = $factory->getToy("doll");
echo $doll->getDescription(); // Outputs: This is a doll.
```

## Anonymous Classes
As the term "anonymous" suggests, it is a class without a (programmer declared) name. The usual practice is to define a class with a certain identifier, so that it can be used repeatedly. The anonymous class, on the other hand is for one-time use only. Anonymous classes are useful when simple, one-off objects need to be created.
Example :
```
<?php
   $obj = new class(10) {
      private int $x;
      function __construct($x) {
         $this->x = $x;
      }

      public function addition($x) {
         return $this->x+$x;
      }
      public function division($x) {
         return $this->x/$x;
      }
   };

   echo "Addition: " . $obj->addition(20) . PHP_EOL;
   echo "Division: " . $obj->division(20) . PHP_EOL;
?>
```

## MVC Architecture
The Model-View-Controller (MVC) framework is an architectural/design pattern that separates an application into three main logical components Model, View, and Controller. It isolates the business logic and presentation layer from each other.
![mvc diagram](mvc.png)
### Model
- Managing data: CRUD (Create, Read, Update, Delete) operations.
- Enforcing business rules.
- Notifying the View and Controller of state changes.
### View
- Rendering data to the user in a specific format.
- Displaying the user interface elements.
- Updating the display when the Model changes.
### Controller 
- Receiving user input and interpreting it.
- Updating the Model based on user actions.
- Selecting and displaying the appropriate View.

# Resources
- [Geeks for Geeks](https://www.geeksforgeeks.org/difference-between-abstraction-and-encapsulation-in-java-with-examples/)
- [W3Schools](https://www.w3schools.com/php/php_oop_interfaces.asp)