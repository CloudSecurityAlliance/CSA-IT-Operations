# Threat model for airtable.com

```mermaid
graph LR

SSO -->|prevents|AccountHijacking[Account_Hijacking]
AccountHijacking -->|results_in|Alteration_or_deletion_of_data[Alterationordeletionofdata]
AccountHijacking -->|results_in|Export_of_sensitive_data[Exportofsensitivedata]

Alterationordeletionofdata -->|compromises|AirtableData[Airtable_Data]
Exportofsensitivedata -->|compromises|AirtableData[Airtable_Data]

User_Education -->|prevents|AccidentalMisuse[Accidental_Misuse]
AccidentalMisuse -->|results_in|Alteration_or_deletion_of_data[Alterationordeletionofdata]
AccidentalMisuse -->|results_in|Export_of_sensitive_data[Exportofsensitivedata]

AttackerBreaksIntoAirtable -->|results_in|Alteration_or_deletion_of_data[Alterationordeletionofdata]
AttackerBreaksIntoAirtable -->|results_in|Export_of_sensitive_data[Exportofsensitivedata]

Leastprivilegemodel
Leastprivilegemodel -->|prevents|Alteration_or_deletion_of_data[Alterationordeletionofdata]
Leastprivilegemodel -->|prevents|Export_of_sensitive_data[Exportofsensitivedata]
Leastprivilegemodel -->|prevents|AccidentalMisuse[Accidental_Misuse]

```
