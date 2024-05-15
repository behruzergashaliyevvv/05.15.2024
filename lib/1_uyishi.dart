import 'package:flutter/material.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temperature Converter',
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  TextEditingController _celsiusController = TextEditingController();
  TextEditingController _fahrenheitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Temperature Converter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Celsius',
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double celsius = double.parse(value);
                  double fahrenheit = celsiusToFahrenheit(celsius);
                  _fahrenheitController.text = fahrenheit.toStringAsFixed(2);
                } else {
                  _fahrenheitController.clear();
                }
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Farangeyt',
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double fahrenheit = double.parse(value);
                  double celsius = fahrenheitToCelsius(fahrenheit);
                  _celsiusController.text = celsius.toStringAsFixed(2);
                } else {
                  _celsiusController.clear();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }
}
