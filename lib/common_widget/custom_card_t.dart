  // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

  import 'package:flutter/material.dart';

class CustomCardT extends StatefulWidget {
  final String? name;
  final String? phoneNumber;
  final String? paydate;
  final String? salary;
  final String? imagePath;
  final Function? func1;
  final Function? func2;
  final Function? func3;
  final Function? func4;
  CustomCardT(
      {this.name,
      this.phoneNumber,
      this.paydate,
      this.salary,
      this.imagePath,
      this.func1,
      this.func2,
      this.func3,
      this.func4});
  @override
  _CustomCardTState createState() => _CustomCardTState();
}

class _CustomCardTState extends State<CustomCardT> {
  late DateTime date;
  late Color timeColor;
  @override
  Widget build(BuildContext context) {
    date = DateTime.parse(widget.paydate.toString());
    if (date.isBefore(DateTime.now())) {
      timeColor = Colors.red;
    } else {
      timeColor = Colors.black;
    }
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[350],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Image.asset(
                  widget.imagePath.toString(),
                  width: 64.0,
                ),
              ),
              Column(
                children: [
                  Text(
                    widget.name.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    widget.phoneNumber.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Pay Date: ${widget.paydate}',
                    style: TextStyle(
                        color: timeColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Salary: Rs. ${widget.salary}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ],
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  tooltip: 'More Details',
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                    tooltip: 'Call Trainer',
                    // onPressed: widget.func1,
                    onPressed: (){},
                  ),
                  Text(
                    'Call',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.teal,
                    ),
                    tooltip: 'Message Trainer',
                    // onPressed: widget.func2,
                    onPressed: (){},
                  ),
                  Text(
                    'Message',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.money,
                      color: Colors.teal,
                    ),
                    tooltip: 'Pay Salary',
                    // onPressed: widget.func3,
                    onPressed: (){},
                  ),
                  Text(
                    'Pay',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    tooltip: 'Delete Trainer',
                    // onPressed: widget.func4,
                    onPressed: (){},
                  ),
                  Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}