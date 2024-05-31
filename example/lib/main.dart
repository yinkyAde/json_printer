import 'package:json_printer/json_printer.dart';

void main() {
  Map<String, dynamic> patientResponse = {
    "patient": {
      "id": "12345",
      "personal_info": {
        "first_name": "John",
        "last_name": "Doe",
        "date_of_birth": "1980-01-01",
        "gender": "Male",
        "contact": {
          "phone": "+1-555-1234",
          "email": "john.doe@example.com",
          "address": {
            "street": "123 Main St",
            "city": "Anytown",
            "state": "Anystate",
            "zip": "12345",
            "country": "USA"
          }
        }
      },
      "medical_history": {
        "allergies": [
          {
            "allergen": "Peanuts",
            "reaction": "Anaphylaxis",
            "severity": "Severe"
          },
          {
            "allergen": "Penicillin",
            "reaction": "Rash",
            "severity": "Moderate"
          }
        ],
        "current_medications": [
          {
            "medication": "Lisinopril",
            "dosage": "10 mg",
            "frequency": "Once daily"
          },
          {
            "medication": "Atorvastatin",
            "dosage": "20 mg",
            "frequency": "Once daily"
          }
        ],
        "past_surgeries": [
          {
            "surgery": "Appendectomy",
            "date": "2005-06-20",
            "outcome": "Successful"
          }
        ],
        "chronic_conditions": [
          {
            "condition": "Hypertension",
            "diagnosed_date": "2010-03-15"
          },
          {
            "condition": "Hyperlipidemia",
            "diagnosed_date": "2012-11-25"
          }
        ]
      },
      "insurance_info": {
        "provider": "HealthCare Inc.",
        "policy_number": "HC123456789",
        "group_number": "GRP12345",
        "coverage": {
          "primary": true,
          "type": "PPO",
          "start_date": "2015-01-01"
        }
      },
      "appointments": [
        {
          "date": "2023-05-20",
          "time": "10:00",
          "doctor": "Dr. Smith",
          "specialty": "Cardiology",
          "reason": "Regular check-up",
          "notes": "Patient reported feeling well."
        },
        {
          "date": "2024-02-10",
          "time": "14:00",
          "doctor": "Dr. Adams",
          "specialty": "Dermatology",
          "reason": "Skin rash",
          "notes": "Prescribed topical cream."
        }
      ],
      "emergency_contacts": [
        {
          "name": "Jane Doe",
          "relationship": "Spouse",
          "phone": "+1-555-5678",
          "email": "jane.doe@example.com"
        }
      ]
    }
  }
  ;

  IJsonFormatter formatter = JsonFormatter();  // Create an instance of JsonFormatter
  IJsonPrinter printer = JsonPrinter(formatter);  // Create an instance of JsonPrinter with the formatter

  printer.printJson(patientResponse);
  //print(patientResponse);// Print the JSON
}
