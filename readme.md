1. Değişken ve Sabitler

Sabit tanımlamak için let, değişken tanımlamak için var anahtar kelimelerini kullanacağız. Sabitin tipini derleme sırasında bilmemize gerek yoktur, ancak ilk değer atamasını yapmamız gerekiyor. Sabitleri uygulamanın yaşam döngüsünde değişmeyecek değerleri saklamak için kullanıyoruz. Örneğin pi değerini projemizde sabit olarak tanımlayabiliriz. Çünkü pi değeri her koşulda 3.14 olacaktır. Değişkenler ise adından anlaşılacağı üzere değişken değeri hafızada saklamamızı sağlayan yapılardır.
    
    var degisken = 15
    degisken = 25
    let pi = 3.14

Bir sabit veya değişken, atamak istediğimiz değerle aynı türde olmalıdır. Bir sabit veya değişken tanımlarken eğer ilk değer atamasını yapıyorsak tip tanımı yapmamız çoğu durumda gerekmez. Swift, derleme sırasında atanan değere göre değişkenin tipine karar verir. Yukarıdaki örnekte pi adındaki sabite ondalıklı bir sayı ataması yaptığımız için Swift bu değerin tipini Float olarak belirler.

Atadığımız değer, değişken veya sabit tipi için yeterli bilgi sağlamıyorsa (veya bir ilk değer ataması yapmadıysak), isimden sonra iki nokta üst üste koyarak tip belirtebiliriz.

    var gKuvvet = 9.8
    let pi: Double = 3.14

Yukarıdaki örnekte gKuvvet sabiti Float tipine sahipken pi sabiti Double tipindedir.

Tip dönüşümü yapmak için diğer dillerden alışılageldik şekilde Tip(Değer) şeklinde açıkça belirtme yapmamız gerekir. Değerler hiçbir zaman arkaplanda tip değiştirmez. Swift oldukça güçlü bir tip denetimine sahiptir.

    let mesaj = "Benim yaşım "
    let yas = 26
    let mesajVeYas = mesaj + String(yas)

Yukarıda yas adındaki sabitimiz aldığı değer nedeniyle, Swift tarafından Int tipi olarak dikkate alınacaktır. Fakat son satırda String bir değer ile birleştirme işlemini gerçekleştirmek için yas sabiti String tipine dönüştürülmüştür.

Yukarıdaki örnekte String değerin sonuna bir ekleme yapmıştık ama String değerlerin herhangi bir yerine değişken veya sabitleri gömmek için çok daha basit bir yol bulunuyor. String içerisine (deger) şeklinde de değerlerimizi ekleyebiliriz.

    let kedi = 3
    let kopek = 5
    let kediBilgisi = "\(kedi) tane kedim var."
    let toplamBilgi = "\(kedi + kopek) kedi ve köpeğim var."

Dizi ve sözlük oluşturmak için temelde köşeli parantezleri kullanıyoruz. Dizi içinde tutulacak değer tipini köşeli parantezler arasına yazmamız tanımlama için yeterlidir. Eğer dizi tanımı sırasında değer ataması da yapıyorsanız tip atamanıza gerek yoktur. Sözlük için diziye ek olarak anahtar tanımını da bu köşeli parantez içinde yapmamız gerekiyor. Anahtar ve değerler iki nokta üst üste ile bir birinden ayrılıyor. Diziden değer almak için yine köşeli parantezler arasına, almak istediğimiz değerin index değerini yazmamız yeterlidir. Sözlükte ise index yerine anahtar ile değerleri alırız.

    var alisverisListesi: [String] = []
    alisverisListesi = ["yoğurt", "makarna", "domates"]
    alisverisListesi[1] = "pirinç"

    var sabitler: [String: Int] = [:]
    var sabitler = ["pi": 3.14,
                    "gKuvveti": 9.8]
    sabitler["basınç"] = 760

Dizi sonuna eleman eklemek için append metodunu kullanacağız.

    alisverisListesi.append("salatalık")
    print(alisverisListesi)

2.  Kontroller

Diğer programlama dillerindekine benzer olarak if-else anahtar kelimeleri ile kontorlleri gerçekleştireceğiz. if anahtar kelimesinden sonra koşulumuzu yazıyoruz. Bu koşulu parantez içine almamız gerekmez ama dilerseniz parantez içinde de koşulu belirtebilirsiniz. Koşul sonrasında süslü parantez blokları içine koşulun doğru olması durumunda çalışacak kodları yazabiliriz.

    let yas = 13
    if yas > 18 {
        print("Yaşınız 18'den büyüktür.")
    }
Koşulumuz dışında kalan durumlarda çalışacak kodu else bloğunun içine ekleriz.

    let yas = 13
    if yas > 18 {
        print("Yaşınız 18'den büyüktür.")
    } else {
        print("Yaşınız 18'den küçüktür.")
    }
Eğer bir koşulu daha kontrol edeceksek else if ile yeni bir koşul kontrolünü if ve else arasına ekleriz.

    let yas = 13
    if yas < 0 {
        print("Yaşınız 0'dan küçük olamaz.")
    } else if yas > 18 {
        print("Yaşınız 18'den büyüktür.")
    } else {
        print("Yaşınız 18'den küçüktür.")
    }
Eğer birden çok koşulu aynı if ile kontrol etmek istiyorsak koşulları mantıksal karşılaştırma operatörleri ile veya , işareti ile ayırarak kontrol edebiliriz.

    let yas = 13
    if yas < 0, yas > 150 {
        print("Yaşınız 0'dan küçük ve 150'den büyük olamaz.")
    } else {
        print("Yaş bilginiz doğrulandı.")
    }

3.  Döngüler

Swift dilinde for ve while olmak üzere iki temel döngü türü bulunmaktadır. While anahtar kelimesi sonrasında yazdığımız koşul doğru olduğu sürece döngü çalışır. Koşul sağlanmadığında döngü sonlanır.

    while 1 < 2 {
        print("Bu döngü sonsuza dek çalışır.")
    }

Yukarıdaki örnekte görüleceği üzere, koşulu her zaman sağlanacağı için döngü sonsuza dek çalışır. Sonsuz döngüler programın hayat döngüsü dışında çoğunlukla istemediğimiz bir durumdur. Bu nedenle koşulu bir değere bağlamak ve bu değeri döngü bloğu içinde güncellemek gerekir ki koşul bir süre sonra sağlanmasın ve sonlansın.

    var  kisiSayisi = 0
    while kisiSayisi < 100 {
        print("Toplam \(kisiSayisi) kişi oyuna katıldı.")
        kisiSayisi += 5 
    }

For döngüsünde aralık operatörü kullanılarak belirli bir aralık tanımı yapılır ve bu aralıkta çalışması sağlanır.

    for i in 0...10 {
        print(i)
    } 

Yukarıdaki döngü 0-10 kapalı aralığında i değerini birer birer arttırarak çalışır. i değeri 0-10 aralığının dışına çıktığında döngü durur. Bu aralıkta 10 değeri de döngüye dahildir. Eğer 10 değerini döngüye dahil etmek istemezsek aşağıdaki gibi aralık operatöründe ufak bir değişiklik yapmamız gerekir.

    for i in 0..<10 {
        print("\(i) değeri 10'dan küçüktür.")
    }

For döngüsü ile dizi elemanlarını kolaylıkla gezebiliriz. Döngüde aralık belirtmek yerine dizi değerimizi döngüye verirsek, döngü dizi içinde yer alan eleman sayısı kadar çalışır ve her döngüde bir sonraki dizi elemanı i değeri yerine döner.

    let hayvanlar = ["kedi", "kuş", "köpek", "aslan", "fil", "zebra"]
    for hayvan in hayvanlar {
        print(hayvan)
    }

Yukarıdaki örnekte dizi içinde yer alan değerler alt alta yazdırılır. Eğer değerlerin soluna index bilgisini de eklemek istersek enumerated dizi metodunu kullanmamız gerekir.

    let programlamaDilleri = ["C", "C++", "Python", "Basic", "Delphi", "Go"]
    for (index, programlamaDili) in programlamaDilleri.enumerated() {
        print("\(index) - \(programlamaDili)")
    }

Yukarıdaki örnekte değerler dizi içinde aldığı index ile bilgisi ile listelenir. enumerated metodu iki farklı değer döndüğü için bu değerleri karşılayacak sayıda parametreyi in anahtar kelimesi öncesinde belirtmem gerekir.