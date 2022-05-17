//lista
var shoppingList : [String] = []
//agregar a lista
shoppingList.append("cocacola")

//elominar de lista
shoppingList.remove(at: 0)

//agregar varios itens
shoppingList += ["Totopos", "Guacamole", "Pico de Gallo"]
//cuantos itens hay en listas
var num = shoppingList.count
print(num)
print("==========================================")

//cambiar  itens
shoppingList[0] = "arroz"


//comprobar si lista esta vacia
/*if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else{
    print("Mandemos a Ricardo a comprar")
}*/



//recorrer lista por items
for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}
print("==========================================")

//recorrer lista e imprimir
for item in shoppingList{
    print(item)
}
print("==========================================")
 var primerElemento = shoppingList[0]

 var todosElemento = shoppingList[0...2]
print(primerElemento)
print(todosElemento)
print("==========================================")
shoppingList += ["ajos", "carne", "papas"]
for item in shoppingList{
    print(item)
}
print("==========================================")
for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}
print("==========================================")

//Conjunto (Set) no existe orden
var letters = Set<Character>()
num = letters.count
print(num)
//insetar
letters.insert("a")
letters.insert("h")
letters.insert("b")
num = letters.count
print(num)

var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favouriteGames.insert("Metal Gear")

if favouriteGames.isEmpty{
    print("No hay juegos favoritos")
}
if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]
print("==========================================")
//A union B = elementos que son o bien de A, o bien de B o de los dos
print(oddDigits.union(evenDigits).sorted())
print("==========================================")

//A intersección B = elementos que son a la vez de A y de B
print(oddDigits.intersection(primeNumbers).sorted())
// A - B = elementos que son de A pero no de B
print(oddDigits.subtracting(primeNumbers).sorted())
// A + B = (A-B) union (B-A)
print(oddDigits.symmetricDifference(primeNumbers).sorted())
print("==========================================")
let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals:Set = ["🐁", "🕊"]


//animales de casa es un subconjunto de animales de granja
print(houseAnimals.isSubset(of: farmAnimals))
//de granja es un superconjunto de casa
print(farmAnimals.isDisjoint(with: cityAnimals))
print("==========================================")


// Diccionarios [k1:v1, k2:v2, ....]
//declarar
var namesOfIntegers = [Int : String]()
//agregar elemento
namesOfIntegers[15] = "quince"
//vaciar diccionario 
namesOfIntegers = [:]


var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]
print(airports.count
)
print(airports.isEmpty)
//agregar itens a diccionario
airports["LHR"] = "London"
//modificar
airports["LHR"] = "London Heathrow"


print(airports)
print("==========================================")


if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValue)")
}
print("==========================================")

print(airports)

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}
//elimianr

airports["PMI"] = nil
print(airports)

if let removedAirport = airports.removeValue(forKey: "DUB"){
    //usar la variable removed airport
}
print("==========================================")

print(airports)
print("==========================================")

//iterar con claves y valor
for (key, value) in airports {
    print("\(key) - \(value)")
}
print("==========================================")
//solo las claves
for airportKey in airports.keys{
    print(airportKey)
}
//solo valores
for airportName in airports.values{
    print(airportName)
}
print("==========================================")
//crear arrays de diccioanrios
let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())

print (airportKeys)
print (airportNames)