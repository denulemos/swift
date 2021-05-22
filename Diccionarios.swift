// Inicializar un diccionario
var airports: [String: String] = ["TOR": "Toronto", "NY": "New York"]

// Como vimos anteriormente, NO es necesario aclarar el tipo de valores
var airports2 = ["TOR": "Toronto", "NY": "New York"]

// Agregar nueva entrada al diccionario
airports["LHR"] = "London"

// Cambiar un valor del diccionario
airports["LHR"] = "London Heathrow"

// Tambien podemos hacerlo de esta manera
airports.updateValue("New York", forKey: "NY") // Esto DEVUELVE el valor anterior para que podamos usarlo si queremos

// Obtener un valor por su key
let airportName = airports["NY"]

// Si le asigno nil de value a una key, la elimino
airports["APL"] = nil

// Tambien otra manera de eliminar es con removeValue(), tambien nos devuelve el value eliminado
airports.removeValue(forKey: "NY")

// Recorrer un diccionario
for (airportCode, airportName) in airports {
   print("\(airportCode): \(airportName)")
}

// Y si queremos recorrer keys y values por separado..
for airportCode in airports.keys {
   print("Airport code: \(airportCode)")
}
 
for airportName in airports.values {
   print("Airport name: \(airportName)")
}