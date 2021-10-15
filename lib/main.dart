import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: AppBar(
          title: Text('Профиль'),
          centerTitle: true,
          actions: [
            Icon(Icons.exit_to_app),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
          backgroundColor: Color(0xff47536d),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.3),
                          width: 2,
                        )
                    ),
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Имя',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff363e53),
                            ),
                            decoration: InputDecoration(
                              suffixText: 'Изменить',
                              suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff363e53),
                              ),
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              filled: true,
                              fillColor: Color(0xffeff2f7),
                            ),

                          ),
                          SizedBox(height: 10),
                          Text(
                            'Телефон',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff363e53),
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              filled: true,
                              fillColor: Color(0xffeff2f7),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  primary: Color(0xff47536d),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'История добавления товара',
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: Color(0xfffafafa),
        //   buttonBackgroundColor: Color(0xff47536d),
        //   items: <Widget>[
        //     Icon(Icons.home, size: 30, color: Color(0xff47536d)),
        //     Icon(Icons.qr_code, size: 30, color: Color(0xff47536d)),
        //     Icon(Icons.person, size: 30, color: Color(0xff47536d)),
        //   ],
        //   index: 1,
        // ),
      ),
    );
  }
}

