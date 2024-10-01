import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(
        Icons.star,
        color: Colors.amber,
      ),
      title: Text(
        "Erric Hoffman",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas.",
      ),
      trailing: Text(
        "05- oct 2020",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}