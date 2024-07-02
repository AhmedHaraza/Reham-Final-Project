import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_school_admission/parent/parent_profile.dart';

void main() {
  runApp(const MaterialApp(
    home: PaymentScreen(),
  ));
}

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentMethod? _selectedPaymentMethod;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Payment Methods',
          style: TextStyle(color: Colors.black87, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Select a payment method:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildPaymentMethodTile('Cash', PaymentMethod.cash),
                _buildPaymentMethodTile('Credit/Debit Card', PaymentMethod.creditDebitCard),
                _buildPaymentMethodTile('valU', PaymentMethod.valU),
                if (_selectedPaymentMethod == PaymentMethod.creditDebitCard)
                  _buildCreditCardDetailsForm(),
                if (_selectedPaymentMethod == PaymentMethod.valU)
                  _buildVALUDetailsFormm(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MaterialButton(
          color: const Color(0XFFCDDDF9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          onPressed: _handleConfirm,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Confirm",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentMethodTile(String title, PaymentMethod method) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Text(title),
        leading: Radio(
          value: method,
          groupValue: _selectedPaymentMethod,
          onChanged: (PaymentMethod? value) {
            setState(() {
              _selectedPaymentMethod = value;
            });
          },
        ),
      ),
    );
  }

  void _handleConfirm() {
    if (_selectedPaymentMethod == null) {
      _showMessage('Please select a payment method.');
      return;
    }

    if (_selectedPaymentMethod == PaymentMethod.cash) {
      _showMessage('تم التسجيل بنجاح!');
    } else if (_selectedPaymentMethod == PaymentMethod.creditDebitCard) {
      if (_formKey.currentState?.validate() ?? false) {
        _showMessage('تم إدخال تفاصيل البطاقة بنجاح.');
      } else {
        _showMessage('يرجى إدخال جميع تفاصيل البطاقة.');
      }
    } else if (_selectedPaymentMethod == PaymentMethod.valU) {
      if (_formKey.currentState?.validate() ?? false) {
        _showMessage('تم إدخال تفاصيل valU بنجاح.');
      } else {
        _showMessage('يرجى إدخال جميع تفاصيل valU.');
      }
    }
  }

  void _showMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildCreditCardDetailsForm() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(19),
              _CardNumberFormatter(),
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              labelText: 'Card Number',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال رقم البطاقة';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                labelText: 'Card Holder Name'
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال اسم حامل البطاقة';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: const TextStyle(color: Colors.black,decorationThickness: 50),
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    _ExpirationDateFormatter(),
                    LengthLimitingTextInputFormatter(4),
                  ],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    labelText: '(MM/YY)',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال تاريخ الانتهاء';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  style: const TextStyle(color: Colors.black,decorationThickness: 50),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    labelText: 'CVV',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'يرجى إدخال CVV';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVALUDetailsFormm() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(19),
              _CardNumberFormatter(),
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              labelText: 'Mobile Number',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال رقم الهاتف';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 16.0),
          const Text('Total Amount',style: TextStyle(fontSize: 15),),
          const Text('\$820'),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text('Installment Plan:',
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline),),
          ),
          Row(
            children: [
              Expanded(
                child:  ElevatedButton(
                  onPressed: () {
                    // Handle 6 months plan
                  },
                  child: const Text('6 Months\n155',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle 9 months plan
                  },
                  child: const Text('9 Months\n109',style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child:  ElevatedButton(
                  onPressed: () {
                    // Handle 12 months plan
                  },
                  child: const Text('12 Months\n86',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                    // Handle 15 months plan
                  },
                  child: const Text('15 Months\n72',style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child:  ElevatedButton(
                  onPressed: () {
                    // Handle 12 months plan
                  },
                  child: const Text('18 Months\n63',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                    // Handle 15 months plan
                  },
                  child: const Text('21 Months\n57',style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child:  ElevatedButton(
                  onPressed: () {
                    // Handle 12 months plan
                  },
                  child: const Text('24 Months\n52',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                  },
                  child: const Text('27 Months\n49',style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum PaymentMethod { cash, creditDebitCard, valU }

// Custom formatter for card number input
class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (text.length == 5 || text.length == 10 || text.length == 15) {
      text += ' '; // Add space after every 4 characters
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

// Custom formatter for expiration date input (MM/YY)
class _ExpirationDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (text.length == 2) {
      text += '/'; // Add '/' after the month
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
