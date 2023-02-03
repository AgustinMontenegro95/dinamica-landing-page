import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/home/widgets/available_buton.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_player/video_player.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
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
                          letterSpacing: 1.5,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 2.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: Text(
                        "Con DINÁMICA manejás tu dinero como vos querés.\nDescubrí todo lo que podés hacer.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: const [
                        Tooltip(
                          message: "Ver en Google Play",
                          child: AvailableButton(
                            store: "Google Play",
                            image: "google-play",
                            link:
                                "https://play.google.com/store/apps/details?id=com.dinamica.wallet",
                          ),
                        ),
                        SizedBox(height: 10),
                        Tooltip(
                          message: "Ver en App Store",
                          child: AvailableButton(
                            store: "App Store   ",
                            image: "app-store",
                            link:
                                "https://apps.apple.com/us/app/dinamica/id1632974131",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Center(
                      child: Text(
                        "O podés escanear el siguiente QR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child: Image.asset("assets/images/qr-download-small.png",
                          width: ResponsiveWrapper.of(context)
                                  .isSmallerThan(MOBILE)
                              ? 110
                              : 140))
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
                  return Padding(
                    padding:
                        ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                            ? const EdgeInsets.only(top: 0)
                            : ResponsiveWrapper.of(context)
                                    .isSmallerThan("DESKTOP_LARGE")
                                ? const EdgeInsets.only(top: 70)
                                : const EdgeInsets.only(top: 45),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: AspectRatio(
                        aspectRatio: videoController.value.aspectRatio,
                        child: RepaintBoundary(
                            child: VideoPlayer(videoController)),
                      ),
                    ),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a loading spinner.
                  return const Center(
                      child: CircularProgressIndicator(color: primary));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
