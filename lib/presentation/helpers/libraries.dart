import 'package:flutter/material.dart';

class Libraries extends StatefulWidget {
  const Libraries({super.key});

  @override
  State<Libraries> createState() => _LibrariesState();
}

class _LibrariesState extends State<Libraries> {
  List<PlaceModel> _places = [];

  @override
  void initState() {
    _fillPlaces();
    super.initState();
  }


  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Libraries",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return _getPlaceCard(_places[index]);
      },
      itemCount: _places.length,
        shrinkWrap: true,
      )
         
    );
  }

  Widget _getPlaceCard(PlaceModel model) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 18,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(model.image),
            SizedBox(
              height: 10,
            ),
            Text(model.title, style: TextStyle(fontSize: 25),),
            SizedBox(
              height: 10,
            ),
            Text(model.place, style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }

  void _fillPlaces() {
    _places.add(PlaceModel(
        image: "assets/agri.jpg",
        title: "Faculty of Agriculture Library",
        place: "Second Floor"));
    _places.add(PlaceModel(
        image: "assets/it.jpg",
        title: "IT Library",
        place: "Third Floor"));
    _places.add(PlaceModel(
        image: "assets/law.jpg",
        title: "Faculty of Law Library",
        place: "GF"));
    _places.add(PlaceModel(image: "assets/medicine.jpg",
        title: "Faculty of Medicine Library",
        place: "First Floor"));

  }
}

class PlaceModel {
  String image;
  String title;
  String place;

  PlaceModel({required this.image, required this.title, required this.place});
}
