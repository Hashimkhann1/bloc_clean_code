import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  const InternetExceptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,),
        Icon(
          Icons.cloud_off,
          size: 50,
          color: Colors.red,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.09,),
        Text(
          'Unable to show results.\nPlease check yout data\nconnection',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20),
        )
      ],
    );
  }
}
