import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _StateDrawer();
}

class _StateDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Nombre de usuario'),
            accountEmail: Text('usuario@correo.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF006a60),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            
          ),
          ListTile(
            leading: Icon(Icons.smartphone_rounded),
            title: Text('Catálogo'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_rounded),
            title: Text('Pedidos'),
          ),
          ListTile(
            leading: Icon(Icons.local_shipping_rounded),
            title: Text('Envíos'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings_rounded),
            title: Text('Ajustes'),
          )
        ],
      ),
    );
  }
}
