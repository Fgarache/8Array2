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
print("=====================")

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
print("=====================")

//recorrer lista e imprimir
for item in shoppingList{
    print(item)
}
print("=====================")
 var primerElemento = shoppingList[0]

 var todosElemento = shoppingList[0...2]
print(primerElemento)
print(todosElemento)
print("=====================")
shoppingList += ["ajos", "carne", "papas"]
for item in shoppingList{
    print(item)
}
print("=====================")
for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}
print("=====================")

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