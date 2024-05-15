import 'package:flutter/material.dart';
import 'package:uyishi/pages/telpass_code_pages.dart';
// import 'package:uyishi/pages/home_pages.dart';
// import 'package:uyishi/pages/telpass_code_pages.dart'; // HomePage import qilingan

class CountryWidget extends StatefulWidget {
  const CountryWidget({Key? key}) : super(key: key);

  @override
  _CountryWidgetState createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop(); // Bosh sahifaga qaytaring
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 230),
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 30),
                child: const Text(
                  "Ish jadvali uchun hisobingizni yarating",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
                child: TextField(
                  keyboardType: TextInputType
                      .phone, // Klaviaturani telefon raqami uchun sozlash
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.phone),
                    labelText:
                        "Telefon Raqami", // Foydalanuvchiga ko'rsatiladigan yozuv
                  ),
                ),
              ),
              SizedBox(height: 20), // Qatordan keyin chiqarish
              const Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Qatorda joylashish
                children: [
                  Text(
                    "Sizda hisobingiz bormi",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    "Shu yerda kirish",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 400),
              Container(
                width: 370,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    // Boshqa sahifaga o'tishni tekshiring
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) {
                        return TelefonCode();
                      }),
                    );
                  },
                  child: Text(
                    "Davom etish",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Davom etish orqali siz Loan'ning",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Terms of use & Privacy Policy",
                style: TextStyle(color: Colors.black, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
