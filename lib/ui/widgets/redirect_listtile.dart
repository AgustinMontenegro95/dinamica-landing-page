import 'package:flutter/material.dart';

class RedirectListtile extends StatelessWidget {
  final String title;
  final String route;

  const RedirectListtile({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.grey.shade200,
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        trailing: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
