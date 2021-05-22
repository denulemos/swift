// Inicializar un array de numeros vacio
var someInts = [Int]()

// Podemos inicialzar un array con una cantidad determinada de elementos y un default de los mismos
var fourDoubles = [Double](repeating: 0.0, count: 4) // [0.0, 0.0, 0.0, 0.0]

// Un array inicializado ya con elementos
var shoppingList: [String] = ["Bread", "Milk"]

// Podemos no poner de que tipo queremos que sea el array, usando el Type Inference que posee swift
var shoppingListInference = ["Bread", "Milk"]

// Contar la cantidad de items que tiene un array
print("El array tiene \(shoppingList.count) items.")

// Chequear si el array está vacio
if shoppingList.isEmpty {
   print("Vacio")
} else {
   print("No Vacio")
}

// Agregar un elemento al final del array
shoppingList.append("Flour")

// Otra manera es
shoppingList += ["Juice"]
shoppingList += ["Chocolate", "Cheese"]

// Acceder al primer elemento del array
var firstItem = shoppingList[0] // Bread

// Cambiar un elemento del array
shoppingList[0] = "Two apples"

// Cambiar varios items del array de una sola vez
var shoppingListNuevo = ["Syrup", "Bread", "Milk", "Apples"] // ["Syrup", "Bread", "Milk", "Apples"]
shoppingListNuevo[1...3] = ["Bananas", "Oranges"] // ["Syrup", "Bananas", "Oranges"]

// Insertar un elemento en X lugar del indice
shoppingList.insert("Syrup", at: 0) // Inserta este elemento en el index 0 y corre a los demás un index + 1

// Remover un elemento en X lugar del indice y ponerlo en una variable 
let syrup = shoppingList.remove(at:0) // Elimina el elemento con el indice uno y corre al resto un index - 1

// Remover el ultimo elemento del array y ponerlo dentro de una variable
let apples = shoppingList.removeLast()

// Iterar en el array
shoppingList = ["Bread", "Milk", "Syrup", "Apples"]
for item in shoppingList {
    print(item)
}

// Usar el .enumerated cuando queremos obntener ademas del item, su index
for (index, value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}