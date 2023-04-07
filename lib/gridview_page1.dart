import 'package:flutter/material.dart';
import 'package:gridview_task1/Model_grid_view.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List GridItems = [
      Modelgrid(col: Colors.lime, Ico: Icons.home, txt: "Home"),
      Modelgrid(col: Colors.orange, Ico: Icons.email, txt: "Email"),
      Modelgrid(col: Colors.brown, Ico: Icons.alarm, txt: "Alarm"),
      Modelgrid(col: Colors.pink, Ico: Icons.wallet, txt: "Wallet"),
      Modelgrid(col: Colors.grey, Ico: Icons.backup, txt: "Backup"),
      Modelgrid(col: Colors.pinkAccent, Ico: Icons.book, txt: "Book"),
      Modelgrid(col: Colors.purple, Ico: Icons.camera, txt: "Camera"),
      Modelgrid(col: Colors.brown, Ico: Icons.person, txt: "Person"),
      Modelgrid(col:Colors.greenAccent, Ico: Icons.print, txt: "Print"),
      Modelgrid(col:Colors.green, Ico: Icons.phone, txt: "Phone"),
      Modelgrid(col:Colors.lime, Ico: Icons.notes, txt: "Notes"),
      Modelgrid(col:Colors.deepPurple, Ico: Icons.music_note, txt: "Music"),
    ];
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: GridItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8,
          mainAxisSpacing: 8,
              crossAxisCount: 3,
              // childAspectRatio: 4/7,
             

            ),

            itemBuilder: (context,index){
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: GridItems[index].col,
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) ,
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(GridItems[index].Ico),
              Text(GridItems[index].txt),
            ],
          ),

          );







        }),
      ),

    );
  }
}
