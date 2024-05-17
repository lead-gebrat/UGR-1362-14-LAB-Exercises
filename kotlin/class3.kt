class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for (item in items) {
            totalPrice += item.price
        }
        return totalPrice
    }
}

class Item(val name: String, val price: Double)

fun main() {
    val cart = ShoppingCart()

    val item1 = Item("Shirt", 29.99)
    val item2 = Item("Jeans", 49.99)
    val item3 = Item("Shoes", 79.99)

    cart.addItem(item1)
    cart.addItem(item2)
    cart.addItem(item3)

    val totalPrice = cart.calculateTotalPrice()

    println("Total price: $totalPrice")
}