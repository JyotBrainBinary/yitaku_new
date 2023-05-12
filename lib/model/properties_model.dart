//
//
// import 'dart:convert';
//
// List<PropertiesModel> propertiesModelFromJson(String str) => List<PropertiesModel>.from(json.decode(str).map((x) => PropertiesModel.fromJson(x)));
//
// String propertiesModelToJson(List<PropertiesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class PropertiesModel {
//   int? id;
//   int? createdAt;
//   String? salesLetting;
//   String? propertyType;
//   String? locality;
//   int? price;
//   String? numberOfBedrooms;
//   String? totalAreaInM2;
//   String? balconyTerrace;
//   String? garragePrice;
//   String? garrageCarCapacity;
//   String? propertyDescription;
//   String? typeOfSeller;
//   String? numberOfBathrooms;
//   String? garageAvailable;
//
//   PropertiesModel({
//     this.id,
//     this.createdAt,
//     this.salesLetting,
//     this.propertyType,
//     this.locality,
//     this.price,
//     this.numberOfBedrooms,
//     this.totalAreaInM2,
//     this.balconyTerrace,
//     this.garragePrice,
//     this.garrageCarCapacity,
//     this.propertyDescription,
//     this.typeOfSeller,
//     this.numberOfBathrooms,
//     this.garageAvailable,
//   });
//
//   factory PropertiesModel.fromJson(Map<String, dynamic> json) => PropertiesModel(
//     id: json["id"],
//     createdAt: json["created_at"],
//     salesLetting: json["Sales_Letting"],
//     propertyType: json["Property_Type"],
//     locality: json["Locality"]!,
//     price: json["Price"],
//     numberOfBedrooms: json["Number_of_bedrooms"],
//     totalAreaInM2: json["Total_area_in_m2"],
//     balconyTerrace: json["Balcony_Terrace"],
//     garragePrice: json["Garrage_Price"],
//     garrageCarCapacity: json["Garrage_Car_capacity"],
//     propertyDescription: json["property_description"],
//     typeOfSeller: json["Type_of_seller"],
//     numberOfBathrooms: json["Number_of_bathrooms"]!,
//     garageAvailable: json["Garage_available"]!,
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "created_at": createdAt,
//     "Sales_Letting": salesLetting,
//     "Property_Type": propertyType,
//     "Locality":locality,
//     "Price": price,
//     "Number_of_bedrooms": numberOfBedrooms,
//     "Total_area_in_m2": totalAreaInM2,
//     "Balcony_Terrace": balconyTerrace,
//     "Garrage_Price": garragePrice,
//     "Garrage_Car_capacity": garrageCarCapacity,
//     "property_description": propertyDescription,
//     "Type_of_seller": typeOfSeller,
//     "Number_of_bathrooms": numberOfBathrooms,
//     "Garage_available": garageAvailable,
//   };
// }
//



// To parse this JSON data, do
//
//     final propertiesModel = propertiesModelFromJson(jsonString);

import 'dart:convert';

List<PropertiesModel> propertiesModelFromJson(String str) => List<PropertiesModel>.from(json.decode(str).map((x) => PropertiesModel.fromJson(x)));

String propertiesModelToJson(List<PropertiesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PropertiesModel {
  int? id;
  int? createdAt;
  String? salesLetting;
  String? propertyType;
  GarageAvailable? locality;
  int? price;
  String? numberOfBedrooms;
  String? totalAreaInM2;
  String? balconyTerrace;
  String? garragePrice;
  String? garrageCarCapacity;
  String? propertyDescription;
  String? typeOfSeller;
  GarageAvailable? numberOfBathrooms;
  GarageAvailable? garageAvailable;

  PropertiesModel({
    this.id,
    this.createdAt,
    this.salesLetting,
    this.propertyType,
    this.locality,
    this.price,
    this.numberOfBedrooms,
    this.totalAreaInM2,
    this.balconyTerrace,
    this.garragePrice,
    this.garrageCarCapacity,
    this.propertyDescription,
    this.typeOfSeller,
    this.numberOfBathrooms,
    this.garageAvailable,
  });

  factory PropertiesModel.fromJson(Map<String, dynamic> json) => PropertiesModel(
    id: json["id"],
    createdAt: json["created_at"],
    salesLetting: json["Sales_Letting"],
    propertyType: json["Property_Type"],
    locality: garageAvailableValues.map[json["Locality"]]!,
    price: json["Price"],
    numberOfBedrooms: json["Number_of_bedrooms"],
    totalAreaInM2: json["Total_area_in_m2"],
    balconyTerrace: json["Balcony_Terrace"],
    garragePrice: json["Garrage_Price"],
    garrageCarCapacity: json["Garrage_Car_capacity"],
    propertyDescription: json["property_description"],
    typeOfSeller: json["Type_of_seller"],
    numberOfBathrooms: garageAvailableValues.map[json["Number_of_bathrooms"]]!,
    garageAvailable: garageAvailableValues.map[json["Garage_available"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "Sales_Letting": salesLetting,
    "Property_Type": propertyType,
    "Locality": garageAvailableValues.reverse[locality],
    "Price": price,
    "Number_of_bedrooms": numberOfBedrooms,
    "Total_area_in_m2": totalAreaInM2,
    "Balcony_Terrace": balconyTerrace,
    "Garrage_Price": garragePrice,
    "Garrage_Car_capacity": garrageCarCapacity,
    "property_description": propertyDescription,
    "Type_of_seller": typeOfSeller,
    "Number_of_bathrooms": garageAvailableValues.reverse[numberOfBathrooms],
    "Garage_available": garageAvailableValues.reverse[garageAvailable],
  };
}

enum GarageAvailable { ATTARD, NULL, EMPTY, STRING, NO }

final garageAvailableValues = EnumValues({
  "Attard": GarageAvailable.ATTARD,
  "": GarageAvailable.EMPTY,
  "No": GarageAvailable.NO,
  "null": GarageAvailable.NULL,
  "string": GarageAvailable.STRING
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
