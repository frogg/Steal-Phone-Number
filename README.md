# Stealing a User's Phone Number
I have found an exploit that allows every app to steal a user's phone number without asking for any permissions.

This hack is made possible because of a security flaw from providers like Telekom, Vodafone, or O2.

This repository demonstrates an implementation of this hack for Deutsche Telekom. Other providers seem to have similar privacy issues, though. Feel free to submit a PR.

![Animated gif showing how the attack works.](https://github.com/frogg/Steal-Phone-Number/raw/master/steal_number_animation.gif)

## Disclaimer
This is a research project! Do not use in production!

## How to use
Please disconnect from WiFi in order to execute the attack.
Right now, this is only implemented with my service provider (Deutsche Telekom, Germany).

## How does it work?
Telekom is my phone provider so they know who I am when visiting their websites. This is why they automatically "sign me in". My script just grabs the information form there using a hidden WKWebView from a website like this (when loaded from within Telekom's cellular network): https://cap.telekom.de/auth?module=substore&subtempid=11110438&wt_mc=im_co_1842_0001_0001_1510306748

![A screenshot of the Telekom website showing my phone number.](https://github.com/frogg/Steal-Phone-Number/raw/master/telekom_website.png)

## Suggested Solution
Telekom shoudl top logging me in automatically. Users don't expect to be logged in without entereing credentials. Only when I enter my user ID & password I am aware that personal information will be shown on the website. This would also prevent attacks like this.
