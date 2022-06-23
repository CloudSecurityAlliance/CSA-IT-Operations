# Threat model for airtable.com

```mermaid
graph LR

SSO -->|prevents|AccountHijackingAccount_Hijacking[Account_Hijacking]
Account_Hijacking -->|results_in|Alteration_or_deletion_of_data[Alteration_or_deletion_of_data]
Account_Hijacking -->|results_in|Export_of_sensitive_data[Export_of_sensitive_data]

Alteration_or_deletion_of_data -->|compromises|Airtable_Data[Airtable_Data]
Export_of_sensitive_data -->|compromises|Airtable_Data[Airtable_Data]

User_Education -->|prevents|Accidental_Misuse[Accidental_Misuse]
Accidental_Misuse -->|results_in|Alteration_or_deletion_of_data[Alteration_or_deletion_of_data]
Accidental_Misuse -->|results_in|Export_of_sensitive_data[Export_of_sensitive_data]

Attacker_Breaks_Into_Airtable -->|results_in|Alteration_or_deletion_of_data[Alteration_or_deletion_of_data]
Attacker_Breaks_Into_Airtable -->|results_in|Export_of_sensitive_data[Export_of_sensitive_data]


Least_privilege_model -->|prevents|Alteration_or_deletion_of_data[Alteration_or_deletion_of_data]
Least_privilege_model -->|prevents|Export_of_sensitive_data[Export_of_sensitive_data]
Least_privilege_model -->|prevents|Accidental_Misuse[Accidental_Misuse]

```
