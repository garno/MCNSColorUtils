# MCUIColorUtils - UIColor missing methods.

MCUIColorUtils extends [`UIColor`](http://developer.apple.com/library/ios/#documentation/UIKit/Reference/UIColor_Class/Reference/Reference.html) to add some convenience methods.

## Using

```objective-c
#import "UIColor+MCUIColorsUtils.h"

- (void)funWithColors
{

  // Use colors straight from the web
  [UIColor colorForHex:@"#fafbfc"];

  // ... if you prefer you can go with bytes
  [UIColor colorWithHexRGB:0xfafbfc];
  [UIColor colorWithHexRGBA:0xfafbfcff];

  // ...or with 0-255 values
  [UIColor colorWithIntegerRed:250 green:251 blue:252];
  [UIColor colorWithIntegerRed:250 green:251 blue:252 alpha:255];

  // ...or if all the channels are the same
  [UIColor colorWithGray:0.980392157]; // 250/255=0.980392157
  [UIColor colorWithIntegerGray:250];  // #fafafa

  // Get a lighter color
  UIColor color* = [UIColor colorForHex:@"#123456"];
  [color colorWithMultiplier:1.10]; // 110% of rgb channels

  // ... or a darker color
  [color colorWithMultiplier:0.90]; // 90% of rgb channels
}
```


## Adding to your project

If you're using [`CocoaPods`](http://cocoapods.org/), there's nothing simpler. Add the following to your [`Podfile`](http://docs.cocoapods.org/podfile.html) and run `pod install`

```
pod 'MCUIColorUtils', :git => 'https://github.com/mirego/MCUIColorUtils.iOS.git'
```

Don't forget to `#import "UIColor+MCUIColorsUtils.h"` where it's needed.


## License

MCUIColorUtils is © 2013 [Mirego](http://www.mirego.com) and may be freely distributed under the [New BSD license](http://opensource.org/licenses/BSD-3-Clause). See the [`LICENSE.md`](https://github.com/mirego/MCUIColorUtils.iOS/blob/master/LICENSE.md) file.


