import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui2/WhatsappUI/listview.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height / 6.6,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff00bfa5).withOpacity(
                    0.9,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0, left: 12),
                          child: Text(
                            'Whatsapp',
                            style: GoogleFonts.raleway(
                              color: Color(0xfffcfcfc),
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Icon(
                            Icons.search_outlined,
                            color: Color(0xfffcfcfc),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0, right: 12),
                          child: Icon(
                            Icons.menu,
                            color: Color(0xfffcfcfc),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 7),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 20),
                          child: Text(
                            'Chats'.toUpperCase(),
                            style: GoogleFonts.montserrat(
                              color: Color(0xfffcfcfc),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 20),
                          child: Text(
                            'status'.toUpperCase(),
                            style: GoogleFonts.montserrat(
                              color: Colors.white38,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0, left: 20),
                          child: Text(
                            'calls'.toUpperCase(),
                            
                            style: GoogleFonts.montserrat(
                              color: Colors.white38,
                              fontSize: 15,
                              
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: listItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: ListTile(
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            listItem[index].image,
                          ),
                        ),
                      ),
                      title: Text(listItem[index].titleText),
                      subtitle: Text(listItem[index].subtitleText),
                      trailing: Text(listItem[index].trailingText),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
