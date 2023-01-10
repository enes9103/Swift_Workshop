var password = "123456"

// IF ELSE STATEMENT
if password == "123456" {
    print("Şifre doğru, hoşgeldiniz.")
} else if password == "123" {
    print("Şifreniz çok zayıf, lütfen yeni bir şifre belirleyin.")
} else {
    print("Şifre yanlış, tekrar deneyiniz.")
}

// SWITCH CASE
switch password {
case "123":
    print("Şifreniz çok zayıf, lütfen yeni bir şifre belirleyin.")
case "123456":
    print("Şifreniz yeterince güvenli. Hoş geldiniz.")
default:
    print("Şifreniz uyuşmuyor.")
}

enum PasswordOption {
    case zayif
    case dogru
    case uyusmuyor
}

var passwordTwo: PasswordOption = .zayif

switch passwordTwo {
case .zayif:
    print("Şifreniz çok zayıf, lütfen yeni bir şifre belirleyin.")
case .dogru:
    print("Şifreniz yeterince güvenli. Hoş geldiniz.")
case .uyusmuyor:
    print("Şifreniz uyuşmuyor.")
default:
    print("Şifreniz uyuşmuyor.")
}

// ütte passwordOption ile type tanımladım ve bunu switch case yapısında kullandık.
