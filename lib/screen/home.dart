import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app_ui/screen/product.dart';
import 'package:medical_app_ui/util/containerdesign.dart';
import 'package:medical_app_ui/util/product_screen.dart';
// import 'package:medical_app_ui/util/search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 40),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/danish.jpg"),
                          radius: 30,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.notifications),
                            Icon(Icons.shopping_bag_sharp),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 10),
                    child: Text(
                      "Hi, Danish Kumar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Text(
                      "Welcome to Quick Medical Store",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search Medicine & Healthcare products',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 850),
              child: Text(
                "Top Catergories",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container_Design(
                  categorytext: 'Dental',
                  Color1: Color(0xffFF9598),
                  Color2: Color(0xffFF70A7),
                ),
                Container_Design(
                  categorytext: 'Wellness',
                  Color1: Color(0xff19E5A5),
                  Color2: Color(0xff15BD92),
                ),
                Container_Design(
                  categorytext: 'Homeo',
                  Color1: Color(0xffFFC06F),
                  Color2: Color(0xffFF793A),
                ),
                Container_Design(
                  categorytext: 'Eye care',
                  Color1: Color(0xff4DB7FF),
                  Color2: Color(0xff3E7DFF),
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 500,
              child: Image.asset('images/medicalimage.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deals of the Day',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Text(
                    'More',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff006AFF),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                ProductScreen(),
                ProductScreen(),
              ],
            ),
            const Row(
              children: [
                ProductScreen(),
                ProductScreen(),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
