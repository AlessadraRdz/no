import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String screenName;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      required this.screenName});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined,
      screenName: 'button_screen'),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Varias tarjetas en flutter',
      link: '/tarjetas',
      icon: Icons.credit_card,
      screenName: 'card_screen')
];
