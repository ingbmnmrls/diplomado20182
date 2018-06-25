//: Playground - noun: a place where people can play

import UIKit

/*:
 ## Funcion que calcule indique si un numero es primo o no
 */
func isPrime(number: Int) -> Bool{
    var div = 2
    var primo = 0
    for _ in 2...div{
        let test = number % div
        if(test == 0){
            primo = primo + 1
        }else{
            div = div + 1
        }
    }
    return primo == 0
}

/*:
 ## Funcion que obtiene la serie de fibonacci para un numero indicado
 */
func fibonacci(elementAt n : Int) -> Int{
    return n < 2 ? n : (fibonacci(elementAt: n - 1 ) + fibonacci(elementAt: n - 2))
}

/*:
 ## Funcion que lleva a cabo fibonacci pero imprime el valor unicamente si se trata de un numero primo
 */
func fibonacciPrime(n: Int) {
    var temp = 0
    for index in 0...n {
        temp = fibonacci(elementAt: index)
        if (isPrime(number: temp)) {
            print(temp)
        }
    }
}

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
