// ignore_for_file: prefer_const_constructors, dead_code, empty_statements, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/pages/coffee_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottonbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<Widget> pages = const [HomePage()];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          //Encontrar el mejor cafe
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Encuentra el mejor café',
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              ),
            ),
          ),

          SizedBox(height: 25),

          //Barra de busquedad

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Busca tu café...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          //TabBar

          TabBar(
            indicatorColor: Colors.orange,
            unselectedLabelColor: Colors.white10,
            labelColor: Colors.orange,
            isScrollable: true,
            labelStyle: const TextStyle(
              fontSize: 17.0,
            ),
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Latte',
              ),
              Tab(
                text: 'Expresso',
              ),
              Tab(
                text: 'Capuccino',
              ),
            ],
          ),
          SizedBox(
            height: 0.03,
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Latte
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeCard(
                      "images/capuccino.jpg",
                      "Capuccino",
                      "With Caramel",
                      "250.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/latte.jpg",
                      "Latte",
                      "With Dulce de Leche",
                      "150.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/expresso.jpg",
                      "Expresso",
                      "2 Shots of Expresso",
                      "100.00",
                    ),
                  ],
                ),
                // Expresso
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeCard(
                      "images/capuccino.jpg",
                      "Capuccino",
                      "With Caramel",
                      "250.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/latte.jpg",
                      "Latte",
                      "With Dulce de Leche",
                      "150.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/expresso.jpg",
                      "Expresso",
                      "2 Shots of Expresso",
                      "100.00",
                    ),
                  ],
                ),
                // Capuccino
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeCard(
                      "images/capuccino.jpg",
                      "Capuccino",
                      "With Caramel",
                      "250.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/latte.jpg",
                      "Latte",
                      "With Dulce de Leche",
                      "150.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    CoffeeCard(
                      "images/expresso.jpg",
                      "Expresso",
                      "2 Shots of Expresso",
                      "100.00",
                    ),
                  ],
                ),
              ],
              controller: _tabController,
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
