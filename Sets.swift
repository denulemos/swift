// A diferencia de los Arrays, los Sets guardan elementos sin repetir y sin ningun orden en particular

// Inicializar set vacio
var letters = Set<Character>() // []

// Inicializar el set con valores
var names: Set<String> = ["David", "Susan", "Robert"] // ["David", "Robert", "Susan"]

// Tampoco es necesario especificar de que tipo queremos que sea el set 
var namesDos: Set = ["David", "Susan", "Robert"] 

// Insertar un nuevo elemento al set
names.insert("Paul")

// Eliminar todo del set
namesDos.removeAll()

// ¿Está este elemento en el Set?
if names.contains("James") {
    print("James está.")
} else {
    print("James no está.")
}

// Iterar en todo el set
for name in names {
   print("\(name)")
}

// Iterar de forma ordenada el set
for name in names.sorted() {
   print("\(name)")
}

// --------------- OPERACIONES SOBRE SETS (Ver apunte en el Readme) ----------------

// Union
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
print(oddDigits.union(evenDigits).sorted())