// While
var a = 1
var b = 5
while a < b {
   print(a)
   a+=1
}

// Repeat While (Do While)
var x = 10
repeat {
   print(x)
   x -= 1
} while x > 0

// For
for index in 1...5 {
   print("\(index) times 5 is \(index * 5)") // Se ejecuta 5 veces
}

// Continue (Saltea ese ciclo cuando se cumple la condicion)
for num in 1...10 {
   if num%2 == 0 {
      continue
   }
   print(num)
}

// Break en un loop
b = 7
a = 10
while a > 0 {
   if(a < b) { // Si a llega a ser mayor a b, se sale del loop
     break
   }
   print(a)
   a-=1
}

// Break en un switch
 a = 5
var letter = "X"
switch a {
   case 1:
     letter = "A"
   case 2: 
     letter = "B"
   default: 
     break
}
print(letter)

// Fallthough => Si se cae en este, el switch pasara a ejecutar el default
let myInt = 5
var desc = "The number \(myInt) is"
switch myInt {
   case 2, 3, 5, 7, 11, 13, 17, 19:
      desc += " a prime number, and also"
      fallthrough
   default:
     desc += " an integer."
}
print(desc) // The number 5 is a prime number, and also an integer.