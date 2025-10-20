import 'package:bitaqwa/utilities//color_constant.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailKajianScreen extends StatefulWidget {

  final String account;
  final String ustadz;
  final String title;
  final String description;
  final String youtubeurl;

  const DetailKajianScreen({
    super.key,
    required this.account,
    required this.ustadz,
    required this.title,
    required this.description,
    required this.youtubeurl
  });

  @override
  State<DetailKajianScreen> createState() => _DetailKajianScreenState();
}

class _DetailKajianScreenState extends State<DetailKajianScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.youtubeurl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          YoutubePlayer(controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.greenAccent,
          onReady: (){
            setState((){});
              },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.account,
                    style: TextStyle(
                      fontFamily: "Poppinsregular",
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.ustadz,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "PoppinsRegular",
                      color: Colors.red
                    ),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 16,
                      color: Colors.grey
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
