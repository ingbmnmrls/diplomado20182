//: Playground - noun: a place where people can play

import UIKit

/*:
 ## Funcion que calcule indique si un numero es primo o no
 */
func isPrime(n: Int) -> Bool{
    if (n <= 1) {
        return false
    }else if (n <= 3) {
        return true
    }else if (n % 2 == 0 || n % 3 == 0) {
        return false
    }
    var i = 5
    while (i * i <= n) {
        if (n % i == 0 || n % (i + 2) == 0) {
            return false
        }
    }
    i = i + 6
    return true
}

/*:
 ## Funcion que lleva a cabo fibonacci pero imprime el valor unicamente si se trata de un numero primo
 */


/*:
 ## Funcion que identifica si una cadena es palindromo
 */
func isPalindrome(string stringToCompare: String) -> Bool{
    if String(stringToCompare.reversed()) == stringToCompare {
        return true
    }
    return false
}

/*:
 ## Funcion que recibe dos cadenas, compara si tienen los mismo caracteres aunque no mantenga el mismo orden
 */
func compareSimilarStrings(_ stringA: String,con stringB: String) -> Bool {
    for letterA in stringA {
        if !stringB.contains(letterA){
            return false
        }
    }
    for letterB in stringB {
        if !stringA.contains(letterB){
            return false
        }
    }
    return true
}

//print(isPrime(n: 10))
//print(compareSimilarStrings("abcd", con: "cdba"))
//print(isPalindrome(string: "anitalavalatina"))
