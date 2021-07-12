import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Color(0xff68838b),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.alarm,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16.0,
                          top: 16,
                        ),
                        child: Icon(
                          Icons.mediation,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          'House Buy',
                          style: GoogleFonts.raleway(
                            color: Colors.white10,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          'House Buy',
                          style: GoogleFonts.raleway(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 8),
                        child: Container(
                          height: 45,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Your Interest',
                              hintStyle: GoogleFonts.raleway(
                                color: Color(0xffbdbdbd),
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 15,
                                top: 11,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Icon(
                                  Icons.search_sharp,
                                  color: Color(0xffbdbdbd),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          // padding: EdgeInsets.only(top: 5),
                          margin: EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 240.0,
                left: 20,
                right: 20,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 15,
                      ),
                      child: Text(
                        "Browse Properties",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                            left: 13,
                          ),
                          child: Text(
                            'Homes',
                            style: GoogleFonts.raleway(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                            left: 15,
                          ),
                          child: Text(
                            'Homes',
                            style: GoogleFonts.raleway(
                              color: Color(0xffbdbdbd),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                            left: 15,
                          ),
                          child: Text(
                            'Homes',
                            style: GoogleFonts.raleway(
                              color: Color(0xffbdbdbd),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xffbdbdbd),
                      endIndent: 15,
                      indent: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: rowContent(text1: 'Jahar', text2: 'Phase 1'),
                        ),
                        Expanded(
                          child: rowContent(text1: 'Rewind', text2: 'Road'),
                        ),
                        Expanded(
                          child:
                              rowContent(text1: 'Alla Iqbal ', text2: 'Town'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: rowContent(text1: 'Jahar', text2: 'Phase 1'),
                        ),
                        Expanded(
                          child: rowContent(text1: 'Rewind', text2: 'Road'),
                        ),
                        Expanded(
                          child:
                              rowContent(text1: 'Alla Iqbal ', text2: 'Town'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowContent({String text1, text2}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 55,
        width: 85,
        decoration: BoxDecoration(
          color: Color(0xffbdbdbd),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: GoogleFonts.raleway(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              text2,
              style: GoogleFonts.raleway(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

