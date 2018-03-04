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
Telekom is my phone provider so they know who I am when visiting their websites (does anyone know how exactly that works?).
This is why they automatically "sign me in". My script just grabs the information form there using a invisible web view loading a link like this: https://cap.telekom.de/auth?module=substore&subtempid=11110438&wt_mc=im_co_1842_0001_0001_1510306748 (only works from within Telekom's cellular network).

![A screenshot of the Telekom website showing my phone number.](https://github.com/frogg/Steal-Phone-Number/raw/master/telekom_website.png)

## Also, please stop advertising this as a feature.
It's not a feature. It's a bug.
![Advertisement for auto login on the telekom website.](https://github.com/frogg/Steal-Phone-Number/raw/master/telekom_website_banner.png)

# Use Cases
We can defnitely assume that evil apps like Facebook and Uber use this flaw already.
- The obvious use case is of course to access the user's phone number.
- With this information evil apps can track users even better. They can track between different apps, after re-installs and even if you switch your device.

# What's Next?
- Telekom should stop signing me in automatically. Users don't expect to be logged in without entereing credentials. Only when I enter my UserID & password I am aware that personal information will be shown on the website. This would also prevent attacks like this.
- Apple should give users more transparancy what kind of data apps are transmitting to their backend. Users should be able to block certain network requests or completely disable network requests for a specific app.
