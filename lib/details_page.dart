import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  _buildIngredientsBoxes(String label, Icon iconName, Color bgColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: bgColor,
            ),
            child: iconName,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 60,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontFamily: 'Nunito'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2b7),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: Colors.white),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25,
                  left: 15.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Text(
                          'Preparation Time',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '5min',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Brewed Expresso',
                                  Icon(
                                    Feather.target,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF615955)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientsBoxes(
                                  'Water',
                                  Icon(
                                    Feather.droplet,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Nutritional Info',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Caffeine',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontFamily: 'Nunito'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '250g',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Protein',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontFamily: 'Nunito'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '100g',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Calories',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontFamily: 'Nunito'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '150mg',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito'),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 35.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.0),
                                color: Colors.brown,
                              ),
                              child: Center(
                                child: Text(
                                  'Make Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Nunito',
                                      fontSize: 17.0,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 7.5,
                left: 75.0,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/twocup.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 25,
                  left: 15,
                  child: Container(
                    height: 300,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 180,
                              child: Text(
                                'Caramel Macchiato',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                              'Freshly Steamed milk with vanilla flavored syrup is mixed with'
                              'expresso and topped with caramel drizzle for an oh-so-sweet finish',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF473D3A)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontFamily: 'Nunito',
                                          color: Colors.white),
                                    ),
                                    Text('/5', style: TextStyle(
                                      fontSize: 13.0,
                                      fontFamily: 'Nunito',
                                      color: Color(0xFF7C7573)
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 35.0,
                                      width: 80.0,
                                    ),
                                    Positioned(
                                      left: 40.0 ,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17.0),
                                          image: DecorationImage(
                                            image: AssetImage('assets/model.jpg'),
                                            fit: BoxFit.cover
                                          ),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0 ,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17.0),
                                          image: DecorationImage(
                                              image: AssetImage('assets/model2.jpg'),
                                              fit: BoxFit.cover
                                          ),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0 ,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17.0),
                                          image: DecorationImage(
                                              image: AssetImage('assets/man.jpg'),
                                              fit: BoxFit.cover
                                          ),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  '+27 more', style:
                                  TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 12.0,
                                    color: Colors.white
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
