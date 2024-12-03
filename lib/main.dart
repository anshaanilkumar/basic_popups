import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String>images=["https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/8/82/Dulquer_Salmaan_at_Karwaan_promotions_%28cropped%29.jpg",
  //   "data:image/jpeg;base64,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"];
  // List<String>names=["sara","rizza","aanand","lilly","arjuu"];
  late FToast fToast;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }
  void _showtoast(BuildContext context){
    fToast.showToast(
      child: Container(
        height: 20,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width: 1),
        ),
        child: Text("just a message"),
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 300.0,
            left: 150,
          );
        }
    );
  }
  TextEditingController namectrlr=TextEditingController();
  void _showsnackbar(BuildContext context){
    final snackbar=SnackBar(
        content: const Text("snackbar"),
        action: SnackBarAction(label: 'undo', onPressed: () {  },),);
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
  void _displaybottomsheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey,
      );
    });
  }
  void _showalert(BuildContext context){
    showDialog(
        barrierDismissible: false,
        context: context, builder:(BuildContext context){
      return AlertDialog(
        title: Text("Exit?"),
        content: Text("Are you sure?"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("yes")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("no")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("cancel"))
        ],
      );
    } );
  }
  void _showTextFieldalert(BuildContext context){
    showDialog(
        barrierDismissible: false,
        context: context, builder:(BuildContext context){
      return AlertDialog(
        title: Text("login"),
        content: Column(
          children: [
            TextField(
              controller:namectrlr ,
              decoration: InputDecoration(
               border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Login"))
          ],
        ),
      );
    } );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Pop-ups"),
        centerTitle: true,
      ),
      body:
        // Table(border: TableBorder.all(width: 1),
        // children: [
        //   TableRow(
        //     children: [
        //       Text("hi"),
        //       Text("hi"),
        //       Text("hello")
        //     ]
        //   ),
        //   TableRow(
        //       children: [
        //         Text("hi"),
        //         Text("hi"),
        //         Text("hello")
        //       ]
        //   ),
        //   TableRow(
        //       children: [
        //         Text("hi"),
        //         Text("hi"),
        //         Text("hello")
        //       ]
        //   ),
        // ],)
      // GridView.custom(
      //   gridDelegate: SliverQuiltedGridDelegate(
      //     crossAxisCount: 4,
      //     mainAxisSpacing: 4,
      //     crossAxisSpacing: 4,
      //     repeatPattern: QuiltedGridRepeatPattern.inverted,
      //     pattern: [
      //       QuiltedGridTile(2, 2),
      //       QuiltedGridTile(1, 1),
      //       QuiltedGridTile(1, 1),
      //       QuiltedGridTile(1, 1),
      //     ],
      //   ),
      //   childrenDelegate: SliverChildBuilderDelegate(
      //     childCount: images.length,
      //         (context, index) => Tile(names: images[index]),
      //   ),
      // )
      // MasonryGridView.count(
      //   crossAxisCount: 4,
      //   mainAxisSpacing: 4,
      //   crossAxisSpacing: 4,
      //   itemCount: names.length,
      //   itemBuilder: (context, index) {
      //     return Tile(
      //       names: names[index],
      //       extent: (index % 5 + 1) * 100,
      //     );
      //   },
      // )
      // StaggeredGrid.count(
      //   crossAxisCount: 4,
      //   mainAxisSpacing: 4,
      //   crossAxisSpacing: 4,
      //   children:  [
      //     StaggeredGridTile.count(
      //       crossAxisCellCount: 2,
      //       mainAxisCellCount: 2,
      //       child: Tile(index: 0),
      //     ),
      //     StaggeredGridTile.count(
      //       crossAxisCellCount: 2,
      //       mainAxisCellCount: 1,
      //       child: Tile(index: 1),
      //     ),
      //     StaggeredGridTile.count(
      //       crossAxisCellCount: 1,
      //       mainAxisCellCount: 1,
      //       child: Tile(index: 2),
      //     ),
      //     StaggeredGridTile.count(
      //       crossAxisCellCount: 1,
      //       mainAxisCellCount: 1,
      //       child: Tile(index: 3),
      //     ),
      //     StaggeredGridTile.count(
      //       crossAxisCellCount: 4,
      //       mainAxisCellCount: 2,
      //       child: Tile(index: 4),
      //     ),
      //   ],
      // )
      Column(
        children: [
          TextButton(onPressed: () {
            _showsnackbar(context);
          }, child: Text("Its a snakbar"),),
          TextButton(onPressed: (){
            _displaybottomsheet(context);
          }, child: Text("bottomsheet")),
          TextButton(onPressed: (){
            _showalert(context);
          }, child: Text("Alert")),
          TextButton(onPressed: (){
            _showTextFieldalert(context);
          }, child: Text("TextField")),
          TextButton(onPressed: () async {
            ConfirmAction? c=await showconfirmalert(context);
            print(c);
          }, child: Text("confirmAction")),
          TextButton(onPressed: () async {
           Product? c=await optionsalert(context);
            print(c);
          }, child: Text("OptionAlert")),
          TextButton(onPressed: () {
            _showtoast(context);
          }, child: Text("Toast"),),

        ],
      ),

      
    );
  }
}
enum ConfirmAction{cancel,delete}
Future<ConfirmAction?> showconfirmalert(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Delete this contact'),
        content: const Text("This will delete the contact from your device"),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.cancel);
            },
          ),
          TextButton(
            child: const Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.delete);
            },
          ),
        ],
      );
    },
  );
}

enum Product { Apple, Samsung, Oppo, Redmi }

Future<Product?> optionsalert(BuildContext context) async {
  return await showDialog<Product>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Product '),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Apple);
              },
              child: const Text('Apple'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Samsung);
              },
              child: const Text('Samsung'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Oppo);
              },
              child: const Text('Oppo'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Redmi);
              },
              child: const Text('Redmi'),
            ),
          ],
        );
      });
}
// class Tile extends StatelessWidget {
//   // int index;
//   String names;
//   // double extent;
//   Tile({super.key, required this.names});//extent deleted
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.green,
//       // height: extent,
//       child: Center(child:
//           Card(
//             child: Tooltip(child: Image.network("$names"),
//             message: "Dq",),
//             elevation: 60,
//           )
//       // Text("$names")
//       ),
//     );
//   }
// }
