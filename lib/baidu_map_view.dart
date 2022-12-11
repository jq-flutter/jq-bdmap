import 'package:flutter/material.dart';
import 'package:flutter_baidu_mapapi_map/flutter_baidu_mapapi_map.dart';
import 'package:flutter_baidu_mapapi_base/flutter_baidu_mapapi_base.dart';

class BaiduMapView extends StatefulWidget {
  const BaiduMapView({Key? key}) : super(key: key);

  @override
  State<BaiduMapView> createState() => _BaiduMapViewState();
}

class _BaiduMapViewState extends State<BaiduMapView> {
  BMFMapOptions mapOptions = BMFMapOptions(
    center: BMFCoordinate(39.917215, 116.380341),
    zoomLevel: 12,
    mapPadding: BMFEdgeInsets(left: 30, top: 0, right: 30, bottom: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "位置",
          style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 45,
        leadingWidth: 35,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.grey.shade800,
          size: 18,
        ),
        actions: [
          Container(
            width: 50,
            alignment: Alignment.center,
            child: Text(
              "选择",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            child: BMFMapWidget(
              onBMFMapCreated: (controller) {
                // onBMFMapCreated(controller);
              },
              mapOptions: mapOptions,
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: ClipRRect(child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "搜索",
                prefixIcon: Icon(Icons.search_rounded,size: 20,),
                suffixIcon: MaterialButton(onPressed: (){},color: Colors.grey.shade300,child: Text("搜索"),)
              ),
            ),borderRadius: BorderRadius.circular(5),)
          ),
          Expanded(
              child: ListView.separated(itemBuilder: (BuildContext context, int index) { 
                return ListTile(
                  title: Text(
                    "哈哈哈哈",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(
                    "asdasdasdasdasdasdas",
                    style: TextStyle(fontSize: 13),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) { 
                return Divider(height: 0,endIndent: 15,indent:15,);
              }, itemCount: 50,
           
          ))
        ],
      ),
    );
  }
}
