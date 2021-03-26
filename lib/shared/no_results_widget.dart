import 'package:flutter/material.dart';

import 'app_spacers.dart';

class NoResults extends StatelessWidget {
  const NoResults({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("NO results"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.35),
              AppSpacers.verticalSpaceLarge,
            ]),
      ),
    );
  }
}
