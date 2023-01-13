//
//  main.swift
//  06_Functions
//
//  Created by Enes on 13.01.2023.
//

import Foundation

func toplama() {
    let sayi1 = 3
    let sayi2 = 5
    
    print(sayi1 + sayi2)
}

toplama()

//-------------parameter func

func toplama2(sayi1: Int, sayi2: Int) {
    print(sayi1 + sayi2)
}

toplama2(sayi1: 3, sayi2: 4)

//-------------
func toplama3(sayi1: Int, sayi2: Int) -> Int {
    return sayi1 + sayi2
}

_ = toplama3(sayi1: 3, sayi2: 4)
// yukarıdaki _ = kullanımı foksitonun çıktısı olan Integer değerini kullanmayacağım demek için kullanıldı. Bu değeri kullanacaksak bir değişkene atıyoruz.

let sonuc = toplama3(sayi1: 1, sayi2: 4)

print(sonuc)

//-------------------
// Eğer fonksiyonun aldığı parametreleri çağırırken isim ile çağırmak istemiyorsak; örneğin: toplama3(1, 4) bu şekilde. O zaman fonksiyon içinde tanımladığımız parametrelerin başına _ alttire koymalıyız.

func toplama4(_ sayi1: Int, _ sayi2: Int) -> Int {
    return sayi1 + sayi2
}

let sonuc2 = toplama4(10, 40)

print(sonuc2)
