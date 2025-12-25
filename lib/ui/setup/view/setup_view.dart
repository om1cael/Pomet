import 'package:flutter/material.dart';

class SetupView extends StatelessWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        label: Text('Nickname'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty<Color?>.fromMap(<WidgetStatesConstraint, Color?>{
                          WidgetState.any: Colors.blueGrey,
                        }),
                      ),
                      child: Text('Connect', style: TextStyle(color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}