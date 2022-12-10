import "package:flutter/material.dart";

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  List<Widget> pageChildren() {
    return <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "PRESENTATION\nThis is me",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae aliquet sapien. Sed ultricies diam mollis commodo eleifend. Curabitur ultrices cursus sapien eu porta. Phasellus tristique mi eget turpis pretium bibendum. Phasellus fermentum, eros id varius consequat, ipsum mi tempor tortor, sit amet dapibus odio turpis non tellus. Mauris scelerisque sem quis ipsum pellentesque sagittis. Nulla a commodo metus.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
      Expanded(
        child: Column(
          children: [Image.asset("assets/images/flutter-city.jpg")],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth >= 800) {
          // ignore: prefer_const_constructors
          return Row(
            children: pageChildren(),
          );
        } else {
          return Column(children: pageChildren());
        }
      },
    );
  }
}
