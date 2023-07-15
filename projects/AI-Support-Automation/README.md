# AI Support Automation

This is the AI support automation project.

## Goal

* Phase 1: Automate level 1 support tickets
* Phase 2: Automate other support tickets as possible, provide context, etc.
* Make our Zendesk KB the source of data for training our AI model
* Gather some information on tickets over the last 12 months

## Workflow

1. Identify missing documents based on ticket requests
2. Update/add support documentation in Zendesk (both for humans and to train AI models)
3. Train AI model on documents
4. Use AI on tickets that are "supported" (e.g. we know for sure we have an answer)

## Project

1. Gather support docs https://support.cloudsecurityalliance.org/
2. Decide on support provider - customgpt.ai (DONE)
3. Setup customgpt.ai, feed docs in
4. Setup test AI channel and views in ZenDesk (DONE)
5. Setup test Zapier integration to do basic ticket handling
6. Setup Zapier step to feed ticket query to CustomGPT using API (https://docs.customgpt.ai/reference/get_api-v1-projects-projectid-conversations)

Sub projects:

Export 12 months of Zendesk tickets and do quick keyword analysis/etc. on them, what topics/areas are most problematic?
* Spam in tickets - can we identify spam and mark/close?
* automated replies that an email no longer works or has changed
* Out of office replies
* request for access to chapter things (routing?)

Update support docs


## Possible problems/concerns:

* How do we only get the AI to answer tickets it can confidently answer, and not e.g. hallucinate an answer? Require the answer to map to a support KB?
* How do we prevent abuse of the AI?

## Supporting documents:

* https://a16z.com/2023/06/20/emerging-architectures-for-llm-applications/
* https://developer.zendesk.com/documentation/help_center/help-center-api/using-the-help-center-api/backing-up-your-knowledge-base-with-the-help-center-api/


