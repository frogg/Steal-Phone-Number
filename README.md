# Stealing the Phone Number
This is an example app showing a potential attack to steal the user's phone number. 

## Disclaimer
This is a research project! Do not use in production!

## How to use
Please disconnect form WiFi in order to execute the attack.
Right now, this is only implemented with my service provider (Deutsche Telekom, Germany). Other providers seem to have similar privacy issues, though (feel free to submit a PR).

## How does it work?
Telekom is my phone provider so they know who I am when visiting their websites. This is why they automatically "sign me in". My script just grabs the information form there using a hidden WKWebView.

![Animated gif showing how the attack works.](https://github.com/frogg/Steal-Phone-Number/raw/master/steal_number_animation.gif)

