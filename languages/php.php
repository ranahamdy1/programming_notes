<?php
echo "<h1>hello world</h1>";

$var = 10;
echo "<p>$var</p>";

echo "<p>'$var'</p>"; // Display as a string
echo "$var"; // true
echo '$var'; //false
echo "<p>$var</p>"; // Display the value of $var

$name = "Dark matter";
echo "<h1>You have read $name</h1>";

$score = 75;
if ($score >= 90) {
    echo "Grade: A";
} elseif ($score >= 80) {
    echo "Grade: B";
} elseif ($score >= 70) {
    echo "Grade: C";
} else {
    echo "Grade: F";
}

//for each
$fruits = ["Apple", "Banana", "Orange"];

foreach ($fruits as $fruit) {
    echo "<p>Fruits: $fruit</p>";
}

$people = [
    ["name" => "Alice", "age" => 25],
    ["name" => "Bob", "age" => 30],
    ["name" => "Charlie", "age" => 35]
];

foreach ($people as $person) {
    echo "Name: " . $person["name"] . ", Age: " . $person["age"] . "<br>";
}


// Ternary Operator
$age = 18;
$message = ($age >= 18) ? "Adult" : "Minor";
echo "<p>Message: $message</p>";

// Switch Statement
$day = "Monday";
switch ($day) {
    case "Monday":
        echo "Start of the work week.";
        break;
    case "Friday":
        echo "Almost the weekend.";
        break;
    default:
        echo "Just another day.";
}

$is_logged_in = true;
echo $is_logged_in ? "Welcome back!" : "Please log in.";

//1. Indexed Arrays (مصفوفة مفهرسة)
//$fruits = ["Apple", "Banana", "Orange"];
//or
$fruits = array("Apple", "Banana", "Orange");
//reach to values
//echo $fruits[0]; // Apple
//echo $fruits[1]; // Banana
//to add new item
$fruits[] = "Grapes";
//to show items
foreach ($fruits as $fruit) {
    echo "<p>$fruit</p>";
}
//EX:
$fruits = array("Apple", "Banana", "Orange");
$fruits[] = "Grapes";
foreach ($fruits as $fruit) {
    echo "<p>$fruit</p>";
}

//2. Associative Arrays (مصفوفة ترابطية)
// to create array
$person = [
    "name" => "John",
    "age" => 30,
    "city" => "New York"
];
//or
$person = array(
    "name" => "John",
    "age" => 30,
    "city" => "New York"
);
// to reach to value
//echo $person["name"]; // John
//echo $person["age"];  // 30

//to show value
foreach ($person as $key => $value) {
    echo "<p>$key: $value</p>";
}

//EX:
$person = array("name" => "John", "age" => 30, "city" => "New York");
foreach ($person as $key => $value) {
    echo "<p>$key: $value</p>";
}

//3. Multidimensional Arrays (مصفوفة متعددة الأبعاد)
// to create array
$people = [
    ["name" => "Alice", "age" => 25],
    ["name" => "Bob", "age" => 30],
    ["name" => "Charlie", "age" => 35]
];
// to reach to value
//echo $people[0]["name"]; // Alice
//echo $people[1]["age"];  // 30

//to show value
foreach ($people as $person) {
    echo "<p>Name: " . $person["name"] . ", Age: " . $person["age"] . "</p>";
}

//EX:
$people = [
    ["name" => "Alice", "age" => 25],
    ["name" => "Bob", "age" => 30],
    ["name" => "Charlie", "age" => 35]
];
foreach ($people as $person) {
    echo "<p>Name: " . $person["name"] . ", Age: " . $person["age"] . "</p>";
}

//Function
function add($num1, $num2) {
    return $num1 + $num2;
}
$result = add(2, 5);
echo "<p>Result is $result</p>";

echo "<h1>Date is " . date("Y-m-d") . "</h1>";

// Filters
$email = "user@example.com";
echo filter_var($email, FILTER_VALIDATE_EMAIL) ? "Valid email!" : "Invalid email!";

// array_filter() and array_map()
$numbers = [1, 2, 3, 4, 5, 6];
$evenNumbers = array_filter($numbers, function ($number) {
    return $number % 2 === 0;
});
print_r($evenNumbers);

$squaredNumbers = array_map(function ($number) {
    return $number ** 2;
}, $numbers);
print_r($squaredNumbers);

// Lambda Function
//هي دالة مجهولة (Anonymous Function) يتم تعريفها بدون اسم.

$sayHello = function ($name) {
    return "Hello, $name!";
};
echo $sayHello("Ahmed");
?>