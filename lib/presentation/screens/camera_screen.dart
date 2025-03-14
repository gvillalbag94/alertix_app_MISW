import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../design_system/colors.dart';
import '../design_system/spaces.dart';
import '../widgets/custom_header_widgte.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController controller;
  List<CameraDescription> _cameras = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _cameras = await availableCameras();
      controller = CameraController(_cameras[0], ResolutionPreset.max);
      await controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }).catchError((Object e) {
        if (e is CameraException) {
          switch (e.code) {
            case 'CameraAccessDenied':
              // Handle access errors here.
              break;
            default:
              // Handle other errors here.
              break;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomHeaderWidget(
                title: 'Crear alarmas',
                onLeftIconPressed: () {
                  Navigator.pop(context);
                },
                leftIcon: Icon(
                  Icons.arrow_back,
                  color: AlertixColors.mainColor1,
                ),
              ),
              if (_cameras.isNotEmpty)
                Expanded(
                  child: CameraPreview(controller),
                ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(AlertixSpaces.space24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.cameraswitch_outlined,
                      size: AlertixSpaces.space32,
                      color: AlertixColors.textColor2,
                    ),
                    Icon(
                      Icons.camera,
                      size: AlertixSpaces.space48,
                      color: AlertixColors.textColor2,
                    ),
                    Icon(
                      Icons.flashlight_on,
                      size: AlertixSpaces.space32,
                      color: AlertixColors.textColor2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
