import 'package:booking_restaurant/data/model/onboarding_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OnboardingRemoteDataSource {
  final FirebaseFirestore firestore;

  OnboardingRemoteDataSource(this.firestore);

  Future<List<OnboardingModel>> getOnboardingData() async {
    final snapshot = await firestore.collection('onboarding').get();
    return snapshot.docs
        .map((doc) => OnboardingModel.fromMap(doc.data()))
        .toList();
  }
}
