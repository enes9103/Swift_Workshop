import Cocoa

//var değişken tanımalamda kullanılırken let sabit tanımalada kullanılır.

var greeting = "Hello, playground"
// String type

let pi = 3.14
// Double Type

let piFloat: Float = 3.14
// Float Type

var bosluk: String
// Boş String değişken tanımlama

let bosSabit: Int
// Boş Integer sabit tanımlama

let name = "Enes"
print(name)

print("Hello \(name)")
// String interpolation \() içindeki değerleri değişken olarak algılar.

greeting = "Merhaba "

print("\(greeting) \(name)")

var ages = [3, 5, 7, 11, 18]
var names = ["Ali", "Ahmet", "Kerem"]
//Array type
//Arraylerde index kontrolü vardır. Bulunmayan index verildğinde hata alırız.

print("\(names[0]), \(ages[4]) yaşındadır.")
