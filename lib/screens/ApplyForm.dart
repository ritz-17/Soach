import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/screens/HomeScreen.dart';
import 'package:testing/widget/CustomButton.dart';

class ApplyForm extends StatelessWidget {
  const ApplyForm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Apply here for Listing",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: AssetImage('assets/asset2.gif'),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Fill your details here.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 350,
                    height: 400,
                    decoration: BoxDecoration(
                      color: const Color(0xffB9F8AF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 4,
                        color: const Color(0xff0A751F),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: Ashish Kumar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Date of Birth: 12/02/2000',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Gender: Male',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Phone: 8306344301',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Email: ashish.kisan@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Address:',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'City: Kanpur',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'State: Uttar Pradesh',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Postal code: 201206',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Crop Type'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Land Area'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Expected Production'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Issue percentage'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Quantity'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Equivalent VFGA Unit'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      text: "SUBMIT",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
