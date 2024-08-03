import 'package:cms_app/common/custom_dropdown.dart';
import 'package:cms_app/common/custom_text.dart';
import 'package:cms_app/common/custom_textfiled.dart';
import 'package:cms_app/common/sized_box/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PathologyTestAdd extends StatefulWidget {
  const PathologyTestAdd({super.key});

  @override
  State<PathologyTestAdd> createState() => _PathologyTestAddState();
}

class _PathologyTestAddState extends State<PathologyTestAdd> {
  String selectedDoctor = 'Doctor';
  String testName = 'test';
  String toothName = 'tooth';
  String alloyType = 'alloy';

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Lab Test",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(Size(40, 40)),
            backgroundColor: WidgetStateProperty.all(Color(0xffebfafc)),
          ),
          onPressed: () {},
          icon:const Center(
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff0867A6),
              size: 16,
            ),
          ),
          constraints:const BoxConstraints(
            maxHeight: 40,
            maxWidth: 40,
          ),
          padding: EdgeInsets.zero,
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: "Doctor"),
              CustomDropdown(
                hint: "doctor",
                items: const ['Dr. Sarah Thompson', 'Dr. Michael Anderson', 'Dr. Thomas', 'Dr. Devid', 'Dr. Jessica Lee'],
                onChanged: (value) {
                  setState(() {
                    selectedDoctor = value!;
                  });
                },
                value: selectedDoctor,
              ),
              SizedBoxes.smallSizedBox,
              const CustomText(text: "Test"),
              CustomDropdown(
                hint: "select tests",
                items: const [
                  'test one',
                  'test Two',
                  'test Three',
                  'test four',
                ],
                onChanged: (value) {
                  setState(() {
                    testName = value!;
                  });
                },
                value: testName,
              ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF1FDFF),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Test No',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01BFE1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Test Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01BFE1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Report Heading',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01BFE1),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.5,),
                      Expanded(
                        child: Text(
                          'Charges',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01BFE1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('1')),
                      Expanded(child: Text('Blood Test')),
                      Expanded(child: Text('Complete Blood Count')),
                      Expanded(child: Text('₹30')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('2')),
                      Expanded(child: Text('X-Ray')),
                      Expanded(child: Text('Chest X-Ray')),
                      Expanded(child: Text('₹50')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('3')),
                      Expanded(child: Text('MRI')),
                      Expanded(child: Text('Brain MRI')),
                      Expanded(child: Text('₹200')),
                    ],
                  ),
                ],
              ),
            ),
          ),

              SizedBoxes.smallSizedBox,
              Center(
                  child: ElevatedButton(
                      style:const  ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xff01BFE1))),
                      onPressed: () {},
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
