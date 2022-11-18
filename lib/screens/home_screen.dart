import 'package:flutter/material.dart';
import 'package:ruchi/components/my_bottom_navbar.dart';
import 'package:ruchi/components/pageview_recipe_list.dart';
import 'package:ruchi/components/popular_recipe_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 32.5, vertical: 16,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recipies',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    SizedBox(
                      height:36,
                      child: Icon(Icons.menu),
                    )
                ],
              )
            ),
            const SizedBox(height: 16.53,),
            const PageViewRecipeList(),
            const SizedBox(height: 42,),
             Padding(padding: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Row(
             children: const [
              Icon(Icons.star_border_outlined),
              SizedBox(
                width: 4.26,
              ),
              Text('Popular', 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),)
             ],

            ),),
            const SizedBox(height: 10,),
            const PopularRecipeList()
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}