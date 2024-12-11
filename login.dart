import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true; // Menyembunyikan password secara default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian atas dengan ilustrasi dan teks Login (Login di atas gambar)
            Stack(
              children: [
                Container(
                  width: double.infinity, // Membuat lebar kontainer menjadi penuh
                  height: 350, // Menambah tinggi bagian atas
                  color: const Color(0xFF7ED957),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    'assets/gambar/Food_Diet.jpg', // Ganti dengan path gambar Anda
                    width: 200, // Membuat gambar memenuhi lebar layar
                    height: 100, // Menyesuaikan tinggi gambar
                  ),
                  ),
                ),
                Positioned(
                  top: 15, // Jarak teks dari atas
                  left: 0, // Jarak teks dari kiri
                  right: 0, // Memungkinkan teks berada di tengah
                  child: Align(
                  alignment: Alignment.topCenter, // Memastikan teks berada di tengah
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      fontSize: 32, // Membuat ukuran font lebih besar
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Warna teks putih agar kontras dengan gambar
                    ),
                  ),
                  ),
                ),
              ],
            ),

            // Bagian input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Input Username/Email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username or Email',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Input Password dengan ikon mata untuk menunjukkan password
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Tombol Submit
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color(0xFF393a58),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Tombol Sign in with Google
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/gambar/google.png', // Ganti dengan path logo Google Anda
                      width: 24, // Atur ukuran logo sesuai kebutuhan
                      height: 24
                      , // Atur ukuran logo sesuai kebutuhan
                    ),
                    label: Text(
                      'Sign in with Google',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Teks Lupa Password dan Sign Up
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Forgot Password clicked");
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            print("Sign Up clicked");
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Belum punya akun? ',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign Up',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
