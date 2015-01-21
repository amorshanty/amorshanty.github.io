console.log("Hello, world!");
console.log(  "This needs to be in quotes or it won't work!"  );
console.log(  "Help! I'm trapped in the computer."  );

// This is a commment
// This is a second comment
console.log("This is a message");  // This is a third comment

// Addition +
console.log(  10 + 5  );

// Subtraction -
console.log(  7 - 3  );

// Multiplication *
console.log(  6 * 7  );

// Division /
console.log(  8 / 2  );
console.log(  5 / 2  );

// Remainder %
console.log(  6 % 3  );
console.log(  8 % 3  );
console.log(  "Iron" + "hack"  );
console.log("Di" + "Bella")

//Ejercicio 1
console.log("Amor"+ 1)
console.log("Amor"+ "1")
var city;

city = "Madrid";
console.log(city);

city = "Barcelona";
console.log(city);

var country = "Spain";
console.log(country);

country = "United States";
console.log(country);

country = country + " of America";
console.log(country);

//Ejercicio 2

var country = "Venezuela2015"
console.log(country);

var country = "2015Venezuela"
console.log(country);

var country = "-2015Venezuela-"
console.log(country);

var country = "$$$2015Venezuela$$$"
console.log(country);

var number = 10;
// Equal
if (number === 10) {
    console.log("Number is equal to 10!");
    console.log("igual que")
    console.log(number);
}

number = number - 1;
// Not equal
if (number !== 11) {
    console.log("Number is now NOT equal to 10!");
    console.log(number);
    console.log("desigual que")
}

// Less than
if (number < 10) {
    console.log("Number is less than 10!");
    console.log(number);
    console.log("menor que")
}

number = number + 2;
// Greater than
if (number > 10) {
    console.log("Number is now greater than 10!");
    console.log(number);
    console.log("mayor que")
}

// Greater than or equal
if (number >= 10) {
    console.log("Number is greater than or equal to 10!");
    console.log(number);
    console.log("mayor igual que")
}


number = 10;

if (number >= 10) {
    console.log("Number is STILL greater than or equal to 10!");
    console.log(number);
    console.log("mayor igual que")
}

// Less than or equal
if (number <= 10) {
    console.log("Number is less than or equal to 10!");
    console.log(number);
    console.log("menor igual que")
}

number = number - 2;

if (number <= 10) {
    console.log("Number is STILL less than or equal to 10!");
    console.log(number);
    console.log("menor igual que")
}

var country;

country = "Australia";

if (country < "Belgium") {
    console.log(country + " is less than Belgium!");
}

country = "australia";

if (country > "Australia") {
    console.log(country + " is greater than Australia!");
}

var country, number;

country = "Australia";

// || represents an OR
if (country === "Australia" || country === "New Zealand") {
    console.log(country + " is either Australia or New Zealand!");
}

country = "New Zealand";

if (country === "Australia" || country === "New Zealand") {
    console.log(country + " is either Australia or New Zealand!");
}

number = 15;

// && represents an AND
if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
}

number = 21;

// No longer runs because number is greater than 20
if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
}

var number;

number = 21;

if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
} else {
    console.log(number + " is NOT between 10 and 20.");
}

var number;

number = 21;

if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
} else if (number <= 10) {
    console.log(number + " is less than 10.");
} else {
    console.log(number + " is greater than 20.");
}

var number;

number = 101;

if (number !== 101 && number < 25 || number > 100) {
    console.log(number + " isn't 101 AND is less than 25 OR is greater than 100.");
}

var i;

for (i = 1;  i <= 42;  i = i + 1) {
    console.log(i);
}

//////////////////////////////////////////////////////////
var i;
var miArray = [];

for (i = 0; i <= 10; i = i + 1) {
    miArray.push("la");
   console.log(miArray.join(""));
}

