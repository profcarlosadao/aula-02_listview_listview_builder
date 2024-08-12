import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String item;
  final int quantity;

  const ItemWidget({
    super.key,
    required this.item,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.add_circle_outline),
      title: Text(item),
      subtitle: Text("$quantity Unidades"),
    );
  }
}
