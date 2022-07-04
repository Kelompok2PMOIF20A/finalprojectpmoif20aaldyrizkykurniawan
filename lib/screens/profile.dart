import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';


const nama = "Arief Ade I";
const donor = "AB+";
const email = "ariefadei4@gmail.com";
const phone = "+62 85726440049";
const location = "Purwokerto";


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile'),
          backgroundColor: Colors.red,
          elevation: 4.0,
        ),
        backgroundColor: Colors.redAccent[800],

        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              Text(
                "Arief Ade I",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              InfoCard(text: nama, icon: Icons.account_box, onPressed: () async {}),
              InfoCard(text: donor, icon: Icons.water_drop_outlined, onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: location, icon: Icons.location_city, onPressed: () async {}),

            ],
          ),
        )
    );
  }
}