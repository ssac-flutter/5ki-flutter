import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_exchange_app/presentation/main_event.dart';
import 'package:rate_exchange_app/presentation/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _baseMoneyController = TextEditingController();
  final _targetMoneyController = TextEditingController();

  @override
  void dispose() {
    _baseMoneyController.dispose();
    _targetMoneyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    _baseMoneyController.text = state.baseMoney.toString();
    _targetMoneyController.text = state.targetMoney.toString();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 48,
                    // color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/exchange_rate_api_icon.png'),
                              const SizedBox(width: 5),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 3),
                                  Text(
                                    'ExchangeRate-APP',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'with ExchangeRate-API',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    height: 240,
                    // color: Colors.grey,
                    child: Image.network(
                        'https://www.exchangerate-api.com/img/brochure/saas-1-edit-cc.png'),
                  ),
                  const SizedBox(height: 64),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: TextField(
                              controller: _baseMoneyController,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                viewModel.onEvent(
                                    MainEvent.inputBaseMoney(num.parse(value)));
                              },
                            )),
                            Expanded(
                                child: DropdownButton<String>(
                              value: state.baseCode,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? value) {
                                viewModel
                                    .onEvent(MainEvent.selectBaseCode(value!));
                              },
                              items: state.rates
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value.code,
                                  child: Text(value.code),
                                );
                              }).toList(),
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextField(
                              controller: _targetMoneyController,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                viewModel.onEvent(
                                    MainEvent.inputTargetMoney(num.parse(value)));
                              },
                            )),
                            Expanded(
                                child: DropdownButton<String>(
                              value: state.targetCode,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? value) {
                                viewModel.onEvent(
                                    MainEvent.selectTargetCode(value!));
                              },
                              items: state.rates
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value.code,
                                  child: Text(value.code),
                                );
                              }).toList(),
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      '2023.07.23 오전 12:01 UTC',
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade400),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
              // CountryPickerWidget(),
              // SizedBox(
              //   height: 250,
              //   child: CountryPickerWidget(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
