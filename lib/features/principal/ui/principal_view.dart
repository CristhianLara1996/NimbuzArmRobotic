import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nimbuz_arm_robotic/shared/utils/utils.dart';
import 'package:nimbuz_arm_robotic/shared/widgets/widgets.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  void initState() {
    // window.addEventListener('message', (Event event) {
    //   final messageEvent = event as MessageEvent;
    //   final data = messageEvent.data.toString();
    //   context.read<PrincipalBloc>().add(SendResultEv(data));
    // });

    super.initState();
  }

  Future<void> openCamera(BuildContext context) async {
    // await cameraWeb.turnON();
    // if (context.mounted) {
    //   context.read<PrincipalBloc>().add(const CameraEv(true));
    // }
  }

  Future<void> proccessVideo(BuildContext context) async {
    // if (context.mounted) {
    //   context.read<PrincipalBloc>().add(StartScannerEv());
    // }
  }

  Future<void> reset(BuildContext context) async {}

  // Future<void> sendSignalManual(BuildContext context, Command command) async {
  //   // final defaultValue = IAEvent(command, Hand.left, const []);
  //   // context.read<PrincipalBloc>()
  //   //   ..setInitIAEvent(defaultValue)
  //   //   ..add(SendSignalEv(defaultValue));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Label('Google Holis', type: LabelType.max),
            // HeaderPrincipal(
            //   onReset: () => reset(context),
            //   onTapCamera: () => openCamera(context),
            //   onTapIA: () => proccessVideo(context),
            //   onTapOptions: (command) => sendSignalManual(context, command),
            // ),
            VerticalSpace.sl,
            // Expanded(
            //   child: Row(
            //     children: [
            //       const SizedBox(
            //         width: 90,
            //         child: RobotsItem(),
            //       ),
            //       Expanded(
            //         child: BlocBuilder<PrincipalBloc, PrincipalState>(
            //           buildWhen: (previous, current) {
            //             return current is LoadingCamera ||
            //                 current is SuccessCamera;
            //           },
            //           builder: (context, state) {
            //             return Stack(
            //               children: [
            //                 cameraWeb,
            //                 if (state is LoadingCamera)
            //                   const Center(
            //                     child: SizedBox(
            //                       width: 50,
            //                       height: 50,
            //                       child: CircularProgressIndicator(),
            //                     ),
            //                   ),
            //               ],
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// class RobotsItem extends StatelessWidget {
//   const RobotsItem({super.key});

//   Future<void> robotToggle(BuildContext context, Robot robot) async {
//     if (context.mounted) {
//       context.read<PrincipalBloc>().add(EnableRobotEv(robot));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<PrincipalBloc, PrincipalState>(
//       buildWhen: (previous, current) {
//         return current is NewRobot;
//       },
//       builder: (context, state) {
//         final robotAll = context.read<PrincipalBloc>().robotALL;
//         return Column(
//           children: [
//             BtnSpider(
//               icon: '🕷️🕷️',
//               label: robotAll.name,
//               enable: robotAll.enable,
//               status: robotAll.status,
//               onTap: () => robotToggle(context, robotAll),
//             ),
//             ...state.robots.map((e) {
//               return BtnSpider(
//                 icon: '🕷️',
//                 label: e.name,
//                 status: e.status,
//                 enable: e.enable,
//                 onTap: () => robotToggle(context, e),
//               );
//             }),
//           ],
//         );
//       },
//     );
//   }
// }
