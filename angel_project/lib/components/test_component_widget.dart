import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_component_model.dart';
export 'test_component_model.dart';

class TestComponentWidget extends StatefulWidget {
  const TestComponentWidget({Key? key}) : super(key: key);

  @override
  _TestComponentWidgetState createState() => _TestComponentWidgetState();
}

class _TestComponentWidgetState extends State<TestComponentWidget> {
  late TestComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestComponentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.026,
      height: 200,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/TestComponent.png',
          ).image,
        ),
      ),
    );
  }
}
