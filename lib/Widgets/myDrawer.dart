import 'package:e_shop/Authentication/authenication.dart';
import 'package:e_shop/Config/config.dart';
import 'package:e_shop/Pages/HomePage.dart';
import 'package:e_shop/Store/cart.dart';
import 'package:e_shop/Orders/myOrders.dart';
import 'package:e_shop/admin/condition.dart';
import 'package:flutter/material.dart';

import '../googlemap.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  elevation: 8.0,
                  child: Container(
                    height: 160.0,
                    width: 160.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        EcommerceApp.sharedPreferences
                            .getString(EcommerceApp.userAvatarUrl),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  EcommerceApp.sharedPreferences
                      .getString(EcommerceApp.userName),
                  // style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 35.0,
                  //     fontFamily: "Signatra"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            padding: EdgeInsets.only(top: 1.0),
            // color: Colors.cyan,

            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    // color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => HomePage());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10.0,
                  // color: Colors.white,
                  thickness: 6.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.map
                    // color: Colors.white,
                  ),
                  title: Text(
                    "Map",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => Ghome());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.reorder,
                    // color: Colors.white,
                  ),
                  title: Text(
                    "My Orders",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => MyOrders());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10.0,
                  // color: Colors.white,
                  thickness: 6.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    // color: Colors.white,
                  ),
                  title: Text(
                    "My Cart",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => CartPage());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10.0,
                  // color: Colors.white,
                  thickness: 6.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    // color: Colors.white,
                  ),
                  title: Text(
                    "Terms and Condition",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (c) => Condition());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(
                  height: 10.0,
                  // color: Colors.white,
                  thickness: 6.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                     color: Colors.black,
                  ),
                  title: Text(
                    "Logout",
                    // style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    EcommerceApp.auth.signOut().then((c) {
                      Route route =
                          MaterialPageRoute(builder: (c) => AuthenticScreen());
                      Navigator.pushReplacement(context, route);
                    });
                  },
                ),
                Divider(
                  height: 10.0,
                   color: Colors.white,
                  thickness: 6.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
