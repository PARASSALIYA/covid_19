import 'package:flutter/material.dart';

import '../helper/helper.dart';
import '../model/coviddata_model.dart';
import '../model/model.dart';

class HomeProvider with ChangeNotifier {
  CovidModel? covidModel;
  CovidDataModel? covidDataModel;
  Future<void> getCovid() async {
    covidModel = await Helper.helper.getCityCovidAip();
    notifyListeners();
  }

  Future<void> getDataCovid() async {
    covidDataModel = await Helper.helper.getCovidAip();
    notifyListeners();
  }
}
