import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 180,
                color: Colors.green,
                child: DrawerHeader(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.shopping_cart,
                        size: 100,
                      ),
                      Text('Flutter App'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      title: const Text('Home'),
                      leading: const Icon(
                        Icons.home,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      title: const Text('Profile'),
                      leading: const Icon(
                        Icons.people,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('My Orders'),
                      leading: const Icon(
                        Icons.shopping_cart,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Logout'),
                      leading: const Icon(
                        Icons.exit_to_app,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Setting',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      title: const Text('Setting'),
                      leading: const Icon(
                        Icons.settings,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('About App'),
                      leading: const Icon(
                        Icons.info,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('terms and condition'),
                      leading: const Icon(
                        Icons.policy,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Privacy and Policy'),
                      leading: const Icon(
                        Icons.policy_sharp,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Home Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.shopping_bag_outlined,
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 10,
                      ),
                      placeholder: "Search for shop & restaurants",
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7b7b7b),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      style: const TextStyle(
                        color: Color(0xff707070),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Type of Products:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * .18,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  const Image(
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                    height: double.infinity,
                                    image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2021/01/16/09/05/meal-5921491_960_720.jpg',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text(
                                            'Food delivery',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          Text(
                                              'Order from your faviruite\nrestaurants and home chefs',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1,
                                                  fontSize: 14)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * .18,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  const Image(
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                    height: double.infinity,
                                    image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2021/01/16/09/05/meal-5921491_960_720.jpg',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text(
                                            'Food delivery',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          Text(
                                              'Order from your faviruite\nrestaurants and home chefs',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1,
                                                  fontSize: 14)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Menu of Products:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
