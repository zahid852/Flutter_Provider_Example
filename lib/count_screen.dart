import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_example/provider.dart';

class countScreen extends StatefulWidget {
  @override
  State<countScreen> createState() => _countScreenState();
}

class _countScreenState extends State<countScreen> {
  late countProvider provider;
  @override
  void didChangeDependencies() {
    provider = Provider.of<countProvider>(context, listen: false);
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('helo');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Provider Count Example'),
      ),
      body: Center(
        child: Consumer<countProvider>(
          builder: ((context, value, _) {
            print('good');
            return Text(value.getCount.toString());
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.incCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
