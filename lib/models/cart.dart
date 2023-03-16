import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{


  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Max 90',
      price: '\$120',
      imagePath: 'lib/images/shoe1.png',
      description: 'The Nike Air Max 90 is a classic sneaker that blends heritage style with a modern look. It features a mix of leather, synthetic and textile materials for a comfortable fit. The Air-Sole unit in the heel provides lightweight cushioning. The rubber outsole provides durable traction.',
    ),
    Shoe(
      name: 'Nike Air Max 95',
      price: '\$130',
      imagePath: 'lib/images/shoe2.png',
      description: 'The Nike Air Max 95 is a classic sneaker that blends heritage style with a modern look. It features a mix of leather, synthetic and textile materials for a comfortable fit. The Air-Sole unit in the heel provides lightweight cushioning. The rubber outsole provides durable traction.',
    ),
    Shoe(
      name: 'Nike Air Max 97',
      price: '\$140',
      imagePath: 'lib/images/shoe3.png',
      description: 'The Nike Air Max 97 is a classic sneaker that blends heritage style with a modern look. It features a mix of leather, synthetic and textile materials for a comfortable fit. The Air-Sole unit in the heel provides lightweight cushioning. The rubber outsole provides durable traction.',
    ),
    Shoe(
      name: 'Nike Air Max 270',
      price: '\$150',
      imagePath: 'lib/images/shoe4.png',
      description: 'The Nike Air Max 270 is a classic sneaker that blends heritage style with a modern look. It features a mix of leather, synthetic and textile materials for a comfortable fit. The Air-Sole unit in the heel provides lightweight cushioning. The rubber outsole provides durable traction.',
    ),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart(){
    return userCart;
  }

  //add item to cart

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

  addShoeToCart(Shoe shoe) {}
}