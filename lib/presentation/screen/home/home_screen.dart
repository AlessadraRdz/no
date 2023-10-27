import 'package:flutter/material.dart';
import 'package:triki_triki/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu de materia 3 '),
        ),
        body: const _ListTile());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length, itemBuilder: menuList);
  }
}

Widget menuList(BuildContext context, int index) {
  final menuItem = appMenuItems[index];
  return Text(menuItem.title);
}

class _ListTile extends StatelessWidget {
  const _ListTile();
  get menuItem => appMenuItems;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon),
      hoverColor: const Color.fromARGB(255, 255, 64, 182),
      splashColor: Colors.blueAccent,
      tileColor: Colors.green,
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {},
    );
  }
}
