import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String screenName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu de materia 3 '),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) => _ListTile(
              menuItem: appMenuItems[index],
            ));
  }
}

Widget menuList(BuildContext context, int index) {
  final menuItem = appMenuItems[index];
  return Text(menuItem.title);
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    super.key,
    required this.menuItem,
  });
  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(menuItem.icon),
        hoverColor: const Color.fromARGB(255, 255, 64, 182),
        splashColor: Colors.blueAccent,
        tileColor: Colors.green,
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle),
        onTap: () {
          context.pushNamed(menuItem.screenName);
        });
  }
}
