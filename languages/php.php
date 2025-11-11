<?php

//variable - datatype
//Data Type in PHP -> string, integer, Boolean, null, float, array, Resource
$name='ali'; //string
$num = 12;   // integer
$val = true; //Boolean
$n= null;   //null
$f= 1.01;   //float
echo $name. "<br>";
echo $num. "<br>";
echo $val. "<br>";
echo $n. "<br>";
echo $f. "<br>";

//array
$ar = array('php','33'); //old array
$ar2 = ['php2','22'];
echo $ar[0]. "<br>";
echo $ar2[0]. "<br>";

//datatype (Resource Class)
//stdClass = كائن فاضي جاهز إنك تحط فيه أي properties
//زي شنطة فاضية وإنت بتحط فيها اللي انت عايزه.

$g = new stdClass;
$g->name = 'name';
echo $g->name. "<br>";

$d=['a','b','c'];
var_dump($d);

echo "<br>";

//custom functions
function calc($val1, $val2)
{
    return $val1 * $val2;
}
echo calc(2, 3)."<br>";

function calc2(...$args)
{
    return $args;
}
$value= calc2(2, 3,6);
var_dump($value);

echo "<br>";

//Local , Global , Static Scope In Function
$x=2;
$y=3;
function calc3()
{
    global $x;
    echo $x."<br>";
    //=
    echo $GLOBALS['x']."<br>";

    static $y = 0;
    echo $y."<br>";
    $y++;
}
calc3();
//calc3();
//calc3();

//some internal built in functions
$a = "hello world!";
echo str_word_count($a)."<br>";

$a2 = ['php','dart'];
echo count($a2)."<br>";

$a3 = "welcome to dart";
echo str_replace('dart', 'php', $a3)."<br>";

//explode string to array
$line = "Ali,Mohamed,Kareem";
$names = explode(",", $line);
print_r($names);

echo "<br>";

$text = "welcome to php world";
$parts = explode(" ", $text);
echo $parts[0]."<br>"; // welcome
echo $parts[1]."<br>"; // to
echo $parts[2]."<br>"; // php

//implode array to string
$arr = ['Ali', 'Mohamed', 'Kareem'];
$result = implode(" - ", $arr);
echo $result;
echo "<br>";
$text2 = "###welcome###";
echo trim($text2, "#")."<br>";

echo strtoupper($text)."<br>";
echo strtolower($text)."<br>";
echo strlen($text)."<br>";


//if and else condition
$a=1;
if($a>=0)
{
    echo "true"."<br>";
}else{
    echo "false"."<br>";
}

//short hand Ternary and null coalescing operator
$b = 1;
//short hand
echo $b == 1 ? "true" : "false";
echo "<br>";
//short hand if
echo $b ??"true";
echo "<br>";

//spaceship operator
echo 1<=> 2; //-1
echo "<br>";
echo 2<=> 2; //0
echo "<br>";
echo 2<=> 1; //1
echo "<br>";

//switch Statement
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
echo "<br>";

//for , foreach loop in php
$c = 2;
for($i = 0; $i < $c; $i++)
{
    echo $i."<br>";
}

$arra =['php','33'];
foreach ($arra as $value)
{
    echo $value."<br>";
}
echo "<br>";

//Global Variables Superglobals

echo $_SERVER['PHP_SELF']."<br>";
//echo $_GET['name']."<br>";

//Superglobals $_FILES
//move_uploaded_file($_FILES['myfile']['tmp_name'], "uploads/" . $_FILES['myfile']['name']);
//Superglobals $_SESSION
//Superglobals $_COOKIE

//Magic Constants
/*
 *
 * 1- echo __LINE__; //يرجع رقم السطر اللي انت فيه.
 * 2- echo __FILE__; //يرجع المسار الكامل للملف الحالي.
 * 3- echo __DIR__; // يرجع مسار المجلد اللي فيه الملف.
 * 4- __FUNCTION__ // يرجع اسم الدالة اللي انت بداخلها.
 * 5- __CLASS__  //يرجع اسم الـ Class.
 * 6- __METHOD__ // يرجع اسم الميثود بالكامل (class + function).
 * 7- __TRAIT__
 * 8- __NAMESPACE__
*/

?>
