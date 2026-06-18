# Kora Data Model

## User
A person who uses Kora.
For Week 1 we focus on patients; clinicians will be added later.

Fields:
- id: unique identifier
- name: display name


## Checkin
A single daily check-in submitted by a patient.
One user can have many checkins.

Fields:
- id: unique identifier
- patient_id: references User
- mood_score: number from 0 to 10
- weight_kg: number
- notes: free text
- created_at: timestamp



## Symptom
One symptom reported in one check-in.
One checkin can have many symptoms.

Fields:
- id: unique identifier
- checkin_id: references Checkin
- symptom: text (e.g., "headache")
- created_at: timestamp



## MedicationLog
One medication taken (or missed) during one check-in.
One checkin can have many medication logs.

Fields:
- id: unique identifier
- checkin_id: references Checkin
- medication_name: text (e.g., "metformin")
- taken: true or false
- created_at: timestamp