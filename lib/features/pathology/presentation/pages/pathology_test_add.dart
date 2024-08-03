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
              child: const Column(
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: Text('1')),
                      Expanded(child: Text('Haemoglobin')),
                      Expanded(child: Text('Complete Blood Count')),
                      Expanded(child: Text('₹1500')),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(child: Text('13')),
                      Expanded(child: Text('Vitamin B2')),
                      Expanded(child: Text('Vitamins')),
                      Expanded(child: Text('₹2500')),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(child: Text('30')),
                      Expanded(child: Text('Vitamin C')),
                      Expanded(child: Text('Vitamins')),
                      Expanded(child: Text('₹500')),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(child: Text('24')),
                      Expanded(child: Text('HDL Cholesterol')),
                      Expanded(child: Text('Cholesterol')),
                      Expanded(child: Text('₹500')),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(child: Text('44')),
                      Expanded(child: Text('Albumin')),
                      Expanded(child: Text('Liver & Gastrointestinal')),
                      Expanded(child: Text('₹1000')),
                    ],
                  ),

                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Headings
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                    Expanded(
                      child: Text(
                        'Discount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff01BFE1),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.5),
                    Expanded(
                      child: Text(
                        'Discount Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff01BFE1),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.5),
                    Expanded(
                      child: Text(
                        'Discount Amount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff01BFE1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                // Containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF1FDFF),
                      ),
                      child: Center(
                        child: Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                    ),
                    SizedBox(width: 8.5),
                    Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF1FDFF),
                      ),
                      child: Center(
                        child:
                        DropdownButton<String>(
                          hint: Text('Amt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          onChanged: (String? newValue) {},
                          items: <String>['amt1', 'amt2', 'amt3']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          isExpanded: true,
                          underline: SizedBox(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.5),
                    Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF1FDFF),
                      ),
                      child: Center(
                        child: Text('₹0.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1FDFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total :'),
                    Text('₹24000'),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grand Total :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0867A6),
                      ),
                    ),
                    Text(
                      '₹24000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0867A6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

              SizedBoxes.largeSizedBox,
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
