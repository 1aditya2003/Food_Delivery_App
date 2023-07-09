import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Res extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController peopleController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
   Res({super.key});

  @override
  Widget build(BuildContext context) {
     CollectionReference reservations =
        FirebaseFirestore.instance.collection('reservations');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Form',style: TextStyle(fontFamily: 'Poppins'),),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: genderController,
                    validator: (value) {
                      final RegExp genderRegex = RegExp(r'^[mfo]$');
                      if (value!.isEmpty) {
                        return 'Please select your gender';
                      } else if (!genderRegex.hasMatch(value.toLowerCase())) {
                        return 'Please enter a valid gender (m/f/o)';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Gender (m/f/o)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.people),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: dateController,
                    validator: (value) {
                      final RegExp dateRegex = RegExp(r'^\d{2}\d{2}\d{4}$');
                      if (value!.isEmpty) {
                        return 'Please select a date';
                      } else if (!dateRegex.hasMatch(value)) {
                        return 'Please enter a valid date in ddmmyyyy format';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Reservation Date (ddmmyyyy)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_today),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(8),
                    ],
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: timeController,
                    validator: (value) {
                      final RegExp timeRegex =
                          RegExp(r'^([01]\d|2[0-3]):([0-5]\d)$');
                      if (value!.isEmpty) {
                        return 'Please select a time';
                      } else if (!timeRegex.hasMatch(value)) {
                        return 'Please enter a valid time in HH:MM format in 24-hour clock format';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Reservation Time (HH:MM)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.access_time),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(5),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: peopleController,
                    validator: (value) {
                      final RegExp numberRegex =
                          RegExp(r'^[1-9]$|^1\d$|^2[0-9]$|^30$');
                      if (value!.isEmpty) {
                        return 'Please enter number of people';
                      } else if (!numberRegex.hasMatch(value)) {
                        return 'Sorry our maximum capacity is 30 people';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Number of People',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.people),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          reservations.add({
                            'name': nameController.text,
                            'gender': genderController.text,
                            'phone': phoneController.text,
                            'email': emailController.text,
                            'date': dateController.text,
                            'time': timeController.text,
                            'people': peopleController.text,
                          });
                          nameController.text = "";
                          genderController.text = "";
                          phoneController.text = "";
                          emailController.text = "";
                          dateController.text = "";
                          timeController.text = "";
                          peopleController.text = "";
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Reservation submitted'),
                            ),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            
          ),
        ),
      ),
    );
  }
}
