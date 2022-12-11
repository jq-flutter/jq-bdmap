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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BMFMapWidget(
          onBMFMapCreated: (controller) {
            // onBMFMapCreated(controller);
          },
          mapOptions: mapOptions,
        ),
      ),
    );
  }
}
