import 'package:coffee_shop_ui/details_page.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  _coffeeListCard(String imagePath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFFDAB68C),

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 55,),
                        Text(
                          shopName,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 13.0,
                              color: Colors.white,),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          coffeeName,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                            color: Colors.white,),
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.black,),
                            ),

                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: 20,
                                color: isFavorite ? Colors.red: Colors.grey,),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 25.0,
                    left: 60.0,
                    child: Container(
                  height: 100.0,
                    width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath
                      ),
                      fit: BoxFit.contain
                    ),
                  ),
                ))

              ],
            ),
            SizedBox(height: 20.0,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsPage()));
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.brown
                ),
                child: Center(
                  child: Text('Order Now', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito'
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  _buildImage(String imagePath){
    return InkWell(
      onTap: (){},
      child: Container(
        height: 295.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome, Abass",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/model.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Let\'s select the best taste for your next coffee break.',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w300,
                  fontSize: 17.0,
                  color: Color(0xFFB0AAA7)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Taste of the week',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 420.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich expresso balanced with steamed milk and a light layer '
                        'of foam',
                    '\$4.99',
                    false),
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore Nearby', style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.only(right:15.0),
                child: Text('See all', style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),

            ],
          ),
          SizedBox(height: 15.0,),
          Container(
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/coffee.jpg'),
                SizedBox(width: 15.0,),
                _buildImage('assets/coffee2.jpg'),
                SizedBox(width: 15.0,),
                _buildImage('assets/coffee3.jpg'),
                SizedBox(width: 15.0,),

              ],
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
