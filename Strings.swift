var emptyString = "" // Inicializamos un string vacio
var anotherEmptyString = String() // Otra manera de inicializar un String vacio

if emptyString.isEmpty { // Manera de chequear si el String se encuentra vacio
   print("El string esta vacio")
}

// Concatenacion
var msg = "Hi"
msg += " David"
print(msg) // Hi David

// Interpolacion
let mult = 4
let message = "\(mult) times 1.5 is \(Double(mult) * 1.5)"
print(message) // 4 times 1.5 is 6.0

// Contar cantidad de caracteres
let someString = "I am learning"
print("Tiene \(someString.count) caracteres") // Tiene 13 caracteres

// Comparando 2 Strings ¿Son iguales?
let s1 = "We are alike"
let s2 = "We are alike"
if s1 == s2 {
   print("Ambos son iguales")
}
