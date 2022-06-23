# Threat modelling the CSA

This dfirectory contains threat models for the services the CSA uses.

## What about attackers?!?!?!

Determining which services the CSA uses is not hard, many can be discovered via DNS (e.g. dig -t mx, -t txt for all our email providers, or looking for cloudsecurityalliance.vendor.tld).

Security through obscurity only works if you can change the secret when an attacker finds out. We can't flip email providers trivially.

Also everyone uses the same basic tech services as we do (Google, Microsoft, Slack, Zoom, etc.).

## Can we use the template/specific models?

Yes, they are licensed under CC0 1.0 Universal (as is this whole repo)

## Basic process:

1. Pick a vendor we use
2. Do a basic threat model in Miro (ask kseifried@ to create a board)
3. Walk through it, update it, etc. Once it is basically done take a screen shot and save it
4. Fill out the template

Regarding the Mermaid diagrams I think it might be better to skip that and just use Miro, it's much easier to discuss changes and it supports multiple media types.
