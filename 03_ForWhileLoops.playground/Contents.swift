for i in 1...100 {
    print("Number \(i)")
}

for i in 1..<100 {
    print("Number \(i)")
}

var i = 1

while i < 100 {
    print("Number \(i)")
    i += 1
}


var sayilar = [1,3,5,17,19,91]

for sayi in sayilar {
    print(sayi)
}

// sayıları indeksleri ile yazdırmak istersek enumerated() methodunu kullanabiliriz.
for sayi in sayilar.enumerated() {
    print(sayi)
}

for (indexNumber, sayi) in sayilar.enumerated() {
    print("\(indexNumber) - \(sayi)")
}
