// To parse this JSON data, do
//
//     final adviceSlip = adviceSlipFromJson(jsonString);


class AdviceSlip {
    AdviceSlip({
        this.slip,
    });

    Slip? slip;

    factory AdviceSlip.fromJson(Map<String, dynamic> json) => AdviceSlip(
        slip: Slip.fromJson(json["slip"]),
    );

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

}
