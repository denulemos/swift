// If simple

var temp = 25
if temp <= 30 {
   print("Hace frio")
}

// Con else if

var cardValue = 12
if cardValue == 11 {
   print("Jack")
} else if cardValue == 12 { 
      print("Reina")
   } 
   else {
   print("No encontrado") 
}

// Switch

var distance = 4
switch distance { 
case 0:
   print("No valido") 
case 1,2,3,4,5: 
   print("Cerca")
default: 
   print("Muy lejos")
 }

 // Where

 let myPoint = (1, -1)
switch myPoint {
   case let (x, y) where x == y:
      print("(\(x), \(y)) is on the line x == y")
   case let (x, y) where x == -y:
     print("(\(x), \(y)) is on the line x == -y")
   case let (x, y):
     print("(\(x), \(y)) is just some arbitrary point")
}

