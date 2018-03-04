# Stealing a User's Phone Number
I have found an exploit that allows every app to steal a users phone number without asking for any permissions.

This hack is made possible because of a security flaw from Telecom providers like Telekom, Vodafone, or O2.

This repository demonstrates an implementation of this hack for Deutsche Telekom. Other providers seem to have similar privacy issues, though. Feel free to submit a PR.

![Animated gif showing how the attack works.](https://github.com/frogg/Steal-Phone-Number/raw/master/steal_number_animation.gif)

## Disclaimer
This is a research project! Do not use in production!

## How to use
Please disconnect from WiFi in order to execute the attack.
Right now, this is only implemented with my service provider (Deutsche Telekom, Germany).

## How does it work?
Telekom is my phone provider so they know who I am when visiting their websites. This is why they automatically "sign me in". My script just grabs the information form there using a hidden WKWebView.

![A screenshot of the Telekom website showing my phone number.](https://github.com/frogg/Steal-Phone-Number/raw/master/telekom_website.png)


