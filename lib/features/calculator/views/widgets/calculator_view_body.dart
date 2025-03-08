import 'package:alsoukalyoum/core/utils/app_colors.dart';
import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _amountController = TextEditingController();
  String _selectedCurrency = "دولار امريكي";
  double _convertedAmount = 0.0;

  final Map<String, double> exchangeRates = {
    "دولار امريكي": 50.00,  // Example rate: 1 USD = 30 EGP
    "دينار كويتي": 100.00,  // Example rate: 1 KWD = 98 EGP
    "ريال سعودي": 13.00,   // Example rate: 1 SAR = 8 EGP
  };

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0.0;
    setState(() {
      _convertedAmount = amount * exchangeRates[_selectedCurrency]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        centerTitle: true,
        title: const Text("الحاسبه الالكترونيه", style: TextStyle(color: Colors.white),),
        backgroundColor: AppColors.primaryColor,
         automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("اختر العملة", style: TextStyles.medium18.copyWith(color: Colors.white)),
            const SizedBox(height: 8),




            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: _selectedCurrency,
                dropdownColor: Colors.blue[900],
                iconEnabledColor: Colors.white,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                isExpanded: true,
                underline: const SizedBox(),
                items: exchangeRates.keys.map((String currency) {
                  return DropdownMenuItem<String>(
                    value: currency,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Add padding
                      child: Text(currency, style: const TextStyle(color: Colors.white)),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCurrency = newValue!;
                    _convertCurrency();
                  });
                },
              ),
            ),






            const SizedBox(height: 20),
             Text("ادخل القيمة", style: TextStyles.medium18.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            TextField(
            
              controller: _amountController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "أدخل المبلغ",
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey, width: 0.5),  
                ),
                focusedBorder: OutlineInputBorder(
 borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white, width: 1),  

                )

              ),
              onChanged: (value) => _convertCurrency(),
            ),
            const SizedBox(height: 20),
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   
    const SizedBox(height: 8),
    Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "$_convertedAmount جنيه مصري",
        style: TextStyles.bold24.copyWith(color: Colors.white),
      ),
    ),
  ],
),

          ],
        ),
      ),
    );
  }
}