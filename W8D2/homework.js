// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
// mysteryScoping1();


// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
// mysteryScoping2();
  
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';  
//         console.log(x);
//     }
//     console.log(x);
// }
// mysteryScoping3();
  
// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';  
//         console.log(x);
//     }
//     console.log(x);
// }
// mysteryScoping4();
  
// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';  
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }
// mysteryScoping2();

function madLib(verb, adjective,noun) {
    console.log(`we shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`)
}
madLib('make', 'best', 'guac');
console.log()
function isSubstring(searchString, subString) {
    if (subString.length > searchString.length) {
        console.log("false");
        return false;
    }
    for (var i = 0; i < searchString.length-subString.length; i++) {
        if (subString === searchString.substring(i, i+subString.length)) {
            console.log("true");
            return true;
        }
    }
    console.log("false");
    return false;
}
isSubstring("time to program", "time");
isSubstring("Jump for joy", "joys");

function isPrime(number) {
    if (number < 2) {
        return false;
    }
    if (number === 2) {
        return true;
    }
    for (var i = 2; i < number; i++) {
        if (number % i === 0) {
            return false;
        }
    }
    return true;
}
console.log(isPrime(15485863));


function sumOfNPrimes(n) {
    if (n < 1) {
        return 0;
    }
    var count = 0;
    var sum = 0;
    var i = 1;
    while (count < n) {
        if (isPrime(i)) {
            count++;
            console.log(i)
            sum +=i;
        }
        i++;
    }
    return sum;
}
console.log(sumOfNPrimes(4));