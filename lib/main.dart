// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home : HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
            ),
            ),
            actions: [
              IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
            color: dWhite,
            size: 30,
            ),)
            ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(
              child: MessageSection(),
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: dGreen,
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["Message", "En ligne", "Groupe" , "Appel"];
  MenuSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item, 
                  style: GoogleFonts.inter(
                    color: Colors.white60 ,
                    fontSize: 29,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      )
    );
  }
}

class FavoriteSection extends StatelessWidget {
  FavoriteSection ({ Key? key }) : super(key: key);

  final List favoriteContacts = [
    {
      'name': "Susana",
      'profile': 'images/avatar/pexels-andrea-piacquadio-774909.jpg',
    },
    {
      'name': "Antho",
      'profile': 'images/avatar/pexels-andrea-piacquadio-874158.jpg',
    },
    {
      'name': "Julien",
      'profile': 'images/avatar/pexels-andrea-piacquadio-941693.jpg',
    },
    {
      'name': "Florencia",
      'profile': 'images/avatar/pexels-adrienne-andersen-2552127.jpg',
    },
    {
      'name': "Franck",
      'profile': 'images/avatar/pexels-creation-hill-1681010.jpg',
    },
    {
      'name': "Nicolas",
      'profile': 'images/avatar/pexels-mentatdgt-937481.jpg',
    },
    {
      'name': "Olivier",
      'profile': 'images/avatar/pexels-chloe-1043474.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: dGreen,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40)
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      color: Colors.white, 
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite){
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: dWhite,
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                            ),
                          ),
                          SizedBox(height: 6),
                        Text(favorite['name'],
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({ Key? key }) : super(key: key);

  final List messages = [
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-774909.jpg',
        'senderName': 'Susana', 
        'message': 'Tu as lu la doc ?',
        'unRead': 0,
        'date' : '15h30',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-874158.jpg',
        'senderName': 'Antho', 
        'message': 'Yo les broooo',
        'unRead': 1,
        'date' : '15h35',
    },
    {
        'senderProfil': 'images/avatar/pexels-chloe-1043474.jpg',
        'senderName': 'Olivier', 
        'message': 'salut salut tout le monde c\'est vendredi',
        'unRead': 2,
        'date' : '9h00',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-941693.jpg',
        'senderName': 'Julien', 
        'message': 'Je kiff la redBull',
        'unRead': 0,
        'date' : '16h20',
    },
    {
        'senderProfil': 'images/avatar/pexels-adrienne-andersen-2552127.jpg',
        'senderName': 'Florencia', 
        'message': 'J\'ai refais mes cheveux, je viens juste de finir',
        'unRead': 2,
        'date' : '22h30',
    },
    {
        'senderProfil': 'images/avatar/pexels-creation-hill-1681010.jpg',
        'senderName': 'Franck', 
        'message': 'Tout  vas bien ?',
        'unRead': 0,
        'date' : '14h30',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-774909.jpg',
        'senderName': 'Susana', 
        'message': 'Super',
        'unRead': 0,
        'date' : '14h32',
    },
    {
        'senderProfil': 'images/avatar/pexels-mentatdgt-937481.jpg',
        'senderName': 'Nicolas', 
        'message': 'Oui tranquille',
        'unRead': 1,
        'date' : '14h35',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-941693.jpg',
        'senderName': 'Julien', 
        'message': 'Quelqu\'un a un mouchoir ?',
        'unRead': 0,
        'date' : '17h30',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-874158.jpg',
        'senderName': 'Antho', 
        'message': 'Je t\'amene sa ma poule',
        'unRead': 4,
        'date' : '17h32',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-941693.jpg',
        'senderName': 'Julien', 
        'message': 'Merci Bruuuuuuh',
        'unRead': 0,
        'date' : '17h35',
    },
    {
        'senderProfil': 'images/avatar/pexels-andrea-piacquadio-774909.jpg',
        'senderName': 'Susana', 
        'message': 'Bonne soirée a tous',
        'unRead': 0,
        'date' : '19h30',
    },
    {
        'senderProfil': 'images/avatar/pexels-adrienne-andersen-2552127.jpg',
        'senderName': 'Florencia', 
        'message': 'Bisous a demain les coupains',
        'unRead': 0,
        'date' : '19h35',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message){
          return InkWell(
            onTap:() => {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ChatPage(),
                  ),
                )
            },
            splashColor: dGreen,
            child: Container(
              padding: EdgeInsets.only(left: 30, right:10, top:15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    margin: EdgeInsets.only(right: 23),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          message['senderProfil'],
                        )
                      )
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(top: 25),
                                child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(message['senderName'],
                                              style: GoogleFonts.inter(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(message['message'], 
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                color: Colors.black87,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                              ),
                            ),
                            
                            Column(
                              children: [
                                Text(message['date']),
                                message['unRead'] != 0 
                                  ? Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: dGreen, 
                                      shape: BoxShape.circle
                                      ),
                                    child: Text(
                                      message['unRead'].toString(),
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                        )
                                    ),
                                  )
                                : Container()
                              ],
                            )
                          ],
                        ),
                        SizedBox(height:20),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        ),
                      ],
                    )
                  )
                ],
              ),
             ),
          );
        }).toList(),
        
      ),
    );
  }
}