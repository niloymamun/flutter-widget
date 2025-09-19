import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          filled: true,
        ),
      ),
      home: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  bool _obscuredPassword = true;

  // dispose function
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController.dispose();
    messageController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  // Submit function
  void _submit() {
    if (formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form is valid - Submit logic here')),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please fix errors in the form')));
    }
  }
  // clear Function

  void _clearAll() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    messageController.clear();
    phoneController.clear();
  }
  // email validator

  String? _emailValidator(String? v) {
    if (v == null || v.trim().isEmpty) return 'Please enter email';
    final regex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(v.trim())) return 'Enter valid email';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter TextField Demo')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Name
              TextFormField(
                controller: nameController,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Full Name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'Please enter name'
                    : null,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(emailFocus),
              ),
              SizedBox(height: 12),
              // Email
              TextFormField(
                controller: emailController,
                focusNode: emailFocus,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@mail.com',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: _emailValidator,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(passwordFocus),
              ),
              SizedBox(height: 12),
              // password
              TextFormField(
                obscureText: _obscuredPassword,
                controller: passwordController,
                focusNode: passwordFocus,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Password',

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscuredPassword = !_obscuredPassword;
                      });
                    },
                    icon: Icon(
                      _obscuredPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                validator: (value) =>
                    value != null && value.length >= 6 ? null : 'Min 6 chars',
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 12),
              // phone
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: '01xxxxxxxxx',
                  prefixIcon: Icon(Icons.phone),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11),
                ],
              ),
              SizedBox(height: 12),
              // Message Multiline
              TextFormField(
                controller: messageController,
                minLines: 1,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: 'Message',
                  hintText: 'Type your message...',
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _submit,
                      child: Text('Submit'),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(onPressed: _clearAll, child: Text('Clear')),
                ],
              ),
              // Submit button
            ],
          ),
        ),
      ),
    );
  }
}
