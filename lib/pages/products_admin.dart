import 'package:flutter/material.dart';
//import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false, //Disabled icon
              title: Text('Choose produts'),
            ),
            ListTile(
              title: Text('List all products'),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage products'),
        bottom: TabBar(
          tabs: <Widget>[
          
            Tab(
              icon: Icon(Icons.create),
              text: 'Create product' 
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My product' 
            ),

          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ProductCreatePage(),
          ProductListPage(),
        ],
      )
    )
    );
  }
}