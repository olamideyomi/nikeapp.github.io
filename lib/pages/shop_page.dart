// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully added
    showDialog(
      context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added!'),
      content: Text('${shoe.name} has been added to your cart'),

    ),);


  }



  final TextEditingController _searchController = TextEditingController();

  void _onSearchPressed() {
    print('Search query: ${_searchController.text}');
    // Perform search actions using _searchController.text
  }

  @override
  Widget build(BuildContext context) {
    return Consumer <Cart> (builder: (context, value, child) =>  Column(
      children: [
        // Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.grey),
                onPressed: _onSearchPressed,
              ),
            ],
          ),
        ),

         // Message
        Padding(padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text('everyone files.. some fly longer than others',
        style: TextStyle(color: Colors.grey[600]),
        ),
        ),  
        // Hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
                Text('Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            ],
          ),
        ),
         const SizedBox(height: 25),

         Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 25),
          itemBuilder: (context, index){
          // create a shoe 
          Shoe shoe = value.getShoeList()[index];
          return ShoeTile(
            shoe: shoe,
            onTap: () => addShoeToCart(shoe),
          );
         },
         ),
         ),

         const Padding(
           padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
           child: Divider(
              color: Colors.white,      
           ),
         ),
      ],
    ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
