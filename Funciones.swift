// func nombreFuncion (nombreParametro: tipoParametro) -> tipoDeDatoQueRetorna
func decirHola(personName: String) -> String {
   let greeting = "Hola, " + personName + "!"
   return greeting
}
print(decirHola(personName: "Denu"))

// Funcion sin parametros
func decirHolaMundo() -> String {
   return "Hello, world"
}
print(decirHolaMundo())

// Funcion que no devuelve nada (void)

func sayHi(name: String) {
   print("Hi, \(name)!")
}

// Funcion que recibe un array de Int como parametro y puede devolver 2 valores
func minMax(array: [Int]) -> (min: Int, max: Int) {
   var currMin = array[0]
   var currMax = array[0]
   for value in array[1..<array.count] {
      if value < currMin {
        currMin = value
      } else if value > currMax {
         currMax = value
      }
   }
  return (currMin, currMax)
}
print(minMax(array: [1, 2, 3, 4, -6, 11])) // (min: -6, max: 11)

// Guardar la devolucion de una funcion dentro de una variable y acceder al mismo luego
func minMax(array: [Int]) -> (min: Int, max: Int) {
   var currMin = array[0]
   var currMax = array[0]
   for value in array[1..<array.count] {
      if value < currMin {
        currMin = value
      } else if value > currMax {
         currMax = value
      }
   }
  return (currMin, currMax)
}

let bounds = minMax(array: [4, -4, 1, 88, 7, 42]) // bounds se vuelve un objeto con 2 atributos, min y max
print("min is \(bounds.min) and max is \(bounds.max)") // min is -4 and max is 88

// Puedo ponerle un nombre identificador a cada parametro para mandarlos en el orden deseado, y hacer que el codigo sea mas claro
func sayHello(to p1: String, and p2: String) -> String {
   return "Hello \(p1) and \(p2)!"
}
print(sayHello(to: "Tom", and: "Jerry"))

// Agregarle un default value a cualquier parametro en caso de que no sea enviado
func someFunction(p1: Int = 12) {
   print("argument value is \(p1)")
}

// Si quiero que la cantidad de parametros que le van a llegar a una funcion puede variar
func arithmeticMean(numbers: Double...) -> Double {
   var total: Double = 0
   for number in numbers { // Se maneja como un array de Doubles
     total += number
   }
   return (total / Double(numbers.count))
}
print(arithmeticMean(numbers: 3.3, 4.4, 6.6)) // Le puedo mandar la cantidad de numeros que yo quiera