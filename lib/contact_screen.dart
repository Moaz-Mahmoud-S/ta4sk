import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contact extends StatelessWidget
{
  String name, mail, phone, poss, url;
  contact(String name, String mail, String phone, String poss, String url)
  {
    this.mail = mail;
    this.phone = phone;
    this.name = name;
    this.poss = poss;
    this.url = url;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 150,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Icon(Icons.mail),
                  ),
                  Text(
                    mail,
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(Icons.phone),
                    ),
                    Text(phone,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                ),
                Row(children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  Icon(Icons.volunteer_activism),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(poss,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Icon(
                    Icons.restore_from_trash,
                    color: Colors.white,
                  )
                ]),
              ],
            ))
      ]),
    );
  }

}