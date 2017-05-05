# LottieProgressHUD

![image alt text](https://github.com/maail/LottieProgressHUD/blob/master/preview.gif)


### What is Lottie?

[Lottie](http://airbnb.design/introducing-lottie/) is an open-source animation tool by the amazing folks at Airbnb. Its an iOS, Android, and React Native library that renders After Effects animations in real time, allowing apps to use animations as easily as they use static images.

### What is Lottie Progress HUD?

Lottie Progress HUD allows you to use these amazing animations as your loading progress indicator on your apps, in just a few simple steps listed below. This uses the ['lottie-ios'](https://github.com/airbnb/lottie-ios) SDK by AirBnB.

### Where can you find an awesome library of Lottie 'files' to use with this Progress HUD?

At [LottieFiles.com](http://lottiefiles.com) ofcourse. Or you can just make a custom one using Adobe After Effects. Here's how you can make [one](https://www.nativescript.org/blog/lottie-animations). Skies the limit.

## Installation

Simply add the file LottieProgressHUD.swift to your project.

## Usage

```
let progressHUD = LottieProgressHUD.shared 
progressHUD.animationFileName = "bouncing_ball" //name of the file
progressHUD.hudHeight = 100 //height of ProgressHUD
progressHUD.hudWidth = 100  //weight of ProgressHUD
progressHUD.hudBackgroundColor = UIColor.white //set background color of ProgressHUD
self.view.addSubview(progressHUD)  // add to view
progressHUD.show() // show ProgressHUD, to hide progressHUD.hide()
```

## License

The MIT License (MIT)

Copyright (c) 2016 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.