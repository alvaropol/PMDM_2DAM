import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerItem extends StatefulWidget {
  const MarkerItem({super.key});

  @override
  State<MarkerItem> createState() => _MarkerItemState();
}

typedef MarkerUpdateAction = Marker Function(Marker marker);

class _MarkerItemState extends State<MarkerItem> {
  GoogleMapController? controller;
  Map<MarkerId, Marker> markers = {
    const MarkerId('1'): const Marker(
        markerId: MarkerId('1'),
        position: LatLng(37.380503603368595, -6.007599131696968))
  };
  MarkerId? selectedMarker;
  LatLng? markerPosition;

  void _onMapCreated(GoogleMapController controller) {
    this.controller = controller;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 600,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.380503603368595, -6.007599131696968),
                zoom: 15.0,
              ),
              markers: Set<Marker>.of(markers.values),
            ),
          ),
        ],
      ),
      Visibility(
        visible: markerPosition != null,
        child: Container(
          color: Colors.white70,
          height: 30,
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              if (markerPosition == null)
                Container()
              else
                Expanded(child: Text('lat: ${markerPosition!.latitude}')),
              if (markerPosition == null)
                Container()
              else
                Expanded(child: Text('lng: ${markerPosition!.longitude}')),
            ],
          ),
        ),
      ),
    ]);
  }
}
