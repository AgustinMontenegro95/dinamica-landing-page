import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_player/video_player.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoController =
        VideoPlayerController.asset("assets/videos/app-dinamica.mp4");
    videoController.setVolume(0);
    videoController.setLooping(true);
    initializeVideoPlayerFuture = videoController.initialize().then((_) {
      if (mounted) {
        // Display the first frame of the video before playback.
        setState(() {});
        videoPlay();
      }
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  void videoPlay() {
    videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      //margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnSpacing: 30,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Text(
                        "¡Potenciá el uso de tu dinero!".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: Text(
                        "Con Dinamica manejás tu dinero como vos querés.\nDescubrí todo lo que podés hacer.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                            ? 20
                            : 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              launchUrlString(
                                  "https://play.google.com/store/apps/details?id=com.soludev.cosmere");
                            },
                            child: Image(
                              image: const AssetImage(
                                'assets/images/available-buttons/google-play-red.png',
                              ),
                              //fit: BoxFit.cover,
                              //height: 70,
                              width: ResponsiveWrapper.of(context)
                                      .isSmallerThan(MOBILE)
                                  ? 175
                                  : ResponsiveWrapper.of(context)
                                          .isSmallerThan("MOBILE_LARGE")
                                      ? 189
                                      : ResponsiveWrapper.of(context)
                                              .isSmallerThan(TABLET)
                                          ? 250
                                          : ResponsiveWrapper.of(context)
                                                  .isSmallerThan(
                                                      "DESKTOP_LARGE")
                                              ? 200
                                              : 300,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              launchUrlString(
                                  "https://play.google.com/store/apps/details?id=com.soludev.cosmere");
                            },
                            child: Image(
                              image: const AssetImage(
                                  'assets/images/available-buttons/app-store-red.png'),
                              // fit: BoxFit.cover,
                              //height: 70,
                              width: ResponsiveWrapper.of(context)
                                      .isSmallerThan(MOBILE)
                                  ? 175
                                  : ResponsiveWrapper.of(context)
                                          .isSmallerThan("MOBILE_LARGE")
                                      ? 189
                                      : ResponsiveWrapper.of(context)
                                              .isSmallerThan(TABLET)
                                          ? 250
                                          : ResponsiveWrapper.of(context)
                                                  .isSmallerThan(
                                                      "DESKTOP_LARGE")
                                              ? 200
                                              : 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: FutureBuilder(
              future: initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the VideoPlayer.
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: AspectRatio(
                      aspectRatio: videoController.value.aspectRatio,
                      child:
                          RepaintBoundary(child: VideoPlayer(videoController)),
                    ),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
