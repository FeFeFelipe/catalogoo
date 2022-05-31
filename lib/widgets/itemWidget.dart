import 'package:flutter/material.dart';
import 'package:Villegas/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(
              item.image,
              height: 100,
              width: 100,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(item.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18))),
            ),
            subtitle: Center(child: Text(item.desc, style: TextStyle(color: Colors.deepOrange[300], fontWeight: FontWeight.bold, fontSize: 15))),
            trailing: Text(
              "\$${item.price}",
              style: TextStyle(color: Colors.cyan[300], fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
