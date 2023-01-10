//
//  main.swift
//  04_array_and_dictionary
//
//  Created by Enes on 11.01.2023.
//

import Foundation

// !!! ARRAY

var arr = ["Elma", "Muz", "Çilek"]

// Boş array tanımlama. Ancak hangi type verileri tutacagını tanımlayabiliyoruz. Alttaki arr2 değişkeni integer tutan bir array oldu.

var arr2 = [Int]()

//İki noktalı tanımlamalar bir  type belirteceksek kullanılır.
var arr3: Array<Float>

//Üstteki iki tanımlamanın farkı [Int]() bunu yaparak değişkeni initial yaptık. Yani başlattık.

arr2.append(3)
print(arr2)     //output [3]

//Üstte arr2 değişkenine 3 integer değerini append yaptığımızda sorunsuz ekledi ve print edebildik.

//arr3.append(1.0)
//print(arr3)

//Üstteki kodu çalıştırdığımızda ise önce arr3 değişkenini initialized yapın diye hata aldık.
//Bu kodu initialized yapmak için;

var arr4: Array<Float> = []

//Bu şekilde  = [] ekleyerek initialized yapabiliriz. Ardından aşağıdaki aynı işlemi yapıp append yaptığımızda sorunsuz ekleme yapacaktır.

arr4.append(1.0)
print(arr4)


//---- GENELDE AŞAĞIDAKİLER GİBİ TANIMLAMA YAPACAĞIZ.
var arr5 = ["Elma", "Muz", "Çilek"]

var arr6 = [Int]()

//! ARRAY İÇERİSİNDEN ELEMAN SİLME.

// removeAll() array içerisindeki tüm elemanları siler.
arr2.removeAll()
print(arr2)

// remove(at: Int) array içerisindeki belirtilen indeksteki elemanı siler. //Verilen indekste değer yoksa hata verir.
arr2.append(5)
arr2.append(8)
arr2.append(10)

arr2.remove(at: 0) //0. indeksteki elemanı sil

//removeLast() array içerisindeki son elemanı siler.

arr2.removeLast()
print(arr2)

//removeFirs() array içerisindeki ilk elemanı siler.

arr2.removeFirst()
print(arr2)

//popLast() array içerisindeki son elemanı kontrollü bir şekilde siler.

let lastItem = arr2.popLast()
print(arr2)

// !!! DİCTİONARY

var dict = ["Ali" : 3, "Mustafa" : 7, "Cihan" : 14]

var dict2 = [String : Float]()

var dict3: Dictionary<String,Double>

// Dictionary lere değer ekleme

dict2["Pi"] = 3.14
print(dict2)
print(dict2["Pi"])

// Dictionary den değer silme

//1
dict2.removeValue(forKey: "Pi")
print(dict2)

//2
dict2["Pi"] = nil  //null
print(dict2)

//3
dict2["G"] = 9.8
dict2.removeAll()
print(dict2)


// değişkenler içerisindeki eleman sayısını görmek için count kullanarak bulabiliriz.

print(dict2.count)

