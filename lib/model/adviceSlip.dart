// To parse this JSON data, do
//
//     final adviceSlip = adviceSlipFromJson(jsonString);

import 'dart:convert';

AdviceSlip adviceSlipFromJson(String str) => AdviceSlip.fromJson(json.decode(str));

String adviceSlipToJson(AdviceSlip data) => json.encode(data.toJson());

class AdviceSlip {
    AdviceSlip({
        this.slip,
    });

    Slip? slip;

    factory AdviceSlip.fromJson(Map<String, dynamic> json) => AdviceSlip(
        slip: Slip.fromJson(json["slip"]),
    );

    Map<String, dynamic> toJson() => {
        "slip": slip?.toJson(),
    };
}

class Slip {
    Slip({
        required this.id,
        required this.advice,
    });

    int id;
    String advice;

    factory Slip.fromJson(Map<String, dynamic> json) => Slip(
        id: json["id"],
        advice: json["advice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "advice": advice,
    };
}
