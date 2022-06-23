# Threat model for airtable.com

```mermaid
graph LR

SSO -->|prevents|AccountHijacking[Account Hijacking]
AccountHijacking -->|results in|Alteration or deletion of data[Alterationordeletionofdata]
AccountHijacking -->|results in|Export of sensitive data[Exportofsensitivedata]

Alterationordeletionofdata -->|compromises|AirtableData[Airtable Data]
Exportofsensitivedata -->|compromises|AirtableData[Airtable Data]

User Education -->|prevents|AccidentalMisuse[Accidental Misuse]
AccidentalMisuse -->|results in|Alteration or deletion of data[Alterationordeletionofdata]
AccidentalMisuse -->|results in|Export of sensitive data[Exportofsensitivedata]

AttackerBreaksIntoAirtable -->|results in|Alteration or deletion of data[Alterationordeletionofdata]
AttackerBreaksIntoAirtable -->|results in|Export of sensitive data[Exportofsensitivedata]

Leastprivilegemodel
Leastprivilegemodel -->|prevents|Alteration or deletion of data[Alterationordeletionofdata]
Leastprivilegemodel -->|prevents|Export of sensitive data[Exportofsensitivedata]
Leastprivilegemodel -->|prevents|AccidentalMisuse[Accidental Misuse]

```
