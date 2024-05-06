
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

Drawer drawer({required  PackageInfo packageInfo}){
  return Drawer(
    backgroundColor: Colors.grey.shade700,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 65,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'PhoneNumber',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'ID',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location'),
            onTap: () {
              // Handle location button tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              // Handle history button tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Payment'),
            onTap: () {
              // Handle payment button tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle settings button tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chat'),
            onTap: () {
              // Handle chat button tap
            },
          ),
          const Spacer(),

          GestureDetector(
            onTap: () {},
            child: const Text(
              "Выйти из аккаунта",
              style: TextStyle(color: Colors.yellow),
            ),
          ),

          Text("App version ${packageInfo.version}"),

          const SizedBox(height: 35)
        ],
      ),
    ),
  );
}
