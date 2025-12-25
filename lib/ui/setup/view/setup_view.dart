import 'package:flutter/material.dart';
import 'package:pomet/ui/setup/view_model/setup_view_model.dart';

class SetupView extends StatelessWidget {
  const SetupView({
    super.key,
    required SetupViewModel viewModel,
  }) : _viewModel = viewModel;

  final SetupViewModel _viewModel;

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
                      onPressed: () async => 
                        await _viewModel.signInAnonymously(), 
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