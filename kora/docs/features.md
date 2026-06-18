# Kora Features 

## Patient check-in 

Patients log a daily check-in containing:
- mood score (0-10)
- weight in kg 
- free-text notes 
- list of symptoms 
- list of medications taken 



## AI health chat
Patients ask questions in a chat interface.
The AI agent answers by combining:
- medical knowledge graph (Neo4j)
- patient’s own history (recent symptoms, medications, check-ins)


## Clinician dashboard
Clinicians view patient trends:
- mood over time
- weight over time
- symptom frequency
- medication adherence


## Daily reminders
The app sends patients a daily push notification reminding them to complete their check-in.