import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';


//final List<String> dataArray1 = ['1', '2', '3', '30', '5', '6', '7'];



// class dataArray1 {
//   static int totalArrayObjects = 0;
//   static int totalArrays = 0;

//   List<List<dynamic>> arrays = [];

//   dataArray1() {
//     totalArrayObjects++;
//   }

//   void pushArray(List<dynamic> array) {
//     arrays.add(array);
//     totalArrays++;
//   }

//   static void printTotalArrayObjects() {
//     print("Total arrays stored: $totalArrays");
//   }

//   static final dataArray1 _singleton = dataArray1();

//   factory dataArray1.getInstance() {
//     return _singleton;
//   }
// }

// var holder = dataArray1.getInstance();
 

// void main() {
//   // Define a list variable
//   List<dynamic> newArray = [10, 20, 50, 70, 120];

//   // Pass the list variable as an argument to pushArray() method
//  // holder.pushArray(newArray);

//   holder.pushArray(newArray);
//   print(holder.arrays[0][2]);

//   dataArray1.printTotalArrayObjects();
// }








final Map<String, int> dataArray = {
  'n': 80,
  'p': 120,
  'k': 3,
  'h': 80,
  'ph': 5,
};



final Map<String, int> dataArray1 = {
  'n': 40,
  'p': 12,
  'k': 3,
  'h': 110,
  'ph': 5,
};




final List<String> oStatusMessages = [
  "The overall status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The overall status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The overall status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

final List<String> nStatusMessages = [
  "The nitrogen status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The nitrogen status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The nitrogen status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

final List<String> pStatusMessages = [
  "The phosphorous status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The phosphorous status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The phosphorous status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

final List<String> kStatusMessages = [
  "The potassium status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The potassium status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The potassium status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

final List<String> hStatusMessages = [
  "The humidity status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The humidity status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The humidity status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

final List<String> phStatusMessages = [
  "The ph status of the soil is good, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The ph status of the soil is moderate, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert.",
  "The ph status of the soil is bad, making it ideal for sowing wheat, potatoes, onions, and more. For further information, we highly recommend consulting an expert."
];

String getStatusForN(int value) {
  if (value >= 0 && value <= 50) {
    return 'good';
  } else if (value > 50 && value <= 100) {
    return 'moderate';
  } else if (value > 100 && value <= 150) {
    return 'bad';
  } else {
    return 'unknown';
  }
}

int getStatusIndexForN(int value) {
  if (value >= 0 && value <= 50) {
    return 0; // Index for 'good'
  } else if (value > 50 && value <= 100) {
    return 1; // Index for 'moderate'
  } else if (value > 100 && value <= 150) {
    return 2; // Index for 'bad'
  } else {
    return -1; // Return -1 for unknown status
  }
}





class BarChartWidget extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList; // Corrected type for seriesList
   bool animate = true;

  BarChartWidget(this.seriesList, {required this.animate});

  factory BarChartWidget.withSampleData() {
    return BarChartWidget(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Mon', 0, 00),    
      OrdinalSales('Tue', 0, 0),
      OrdinalSales('Wed', 0, 0),
      OrdinalSales('Thu', 1, 3),
      OrdinalSales('Fri', 0, 0),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales1',
        domainFn: (OrdinalSales sales, _) => sales.day,
        measureFn: (OrdinalSales sales, _) => sales.value1,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        labelAccessorFn: (OrdinalSales sales, _) => '${sales.value1}',
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Sales2',
        domainFn: (OrdinalSales sales, _) => sales.day,
        measureFn: (OrdinalSales sales, _) => sales.value2,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        labelAccessorFn: (OrdinalSales sales, _) => '${sales.value2}',
      ),
    ];
  }
}

class OrdinalSales {
  final String day;
  final int value1;
  final int value2;

  OrdinalSales(this.day, this.value1, this.value2);
}






class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

   LegendItem({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}



final List<Map<String, dynamic>> data = [
    {"value1": "1", "value2": "Addis Abeba", "value3": "15 February, 2024", "value4": "12:21"},
    {"value1": "2", "value2": "Addis Abeba", "value3": "12 February, 2024", "value4": "11:02"},
    {"value1": "3", "value2": "Addis Abeba", "value3": "11 February, 2024", "value4": "10:14"},
  ];

  final List<String> keys = ["#:", "Location:", "Dates:", "Time:", ""];













