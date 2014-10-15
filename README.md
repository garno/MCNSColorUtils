# MCNSColorUtils - NSColor missing methods.

MCNSColorUtils extends [`NSColor`](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/NSColor_Class/Reference/Reference.html)
to add some convenience methods.

## Using

```objective-c
#import "NSColor+MCNSColorsUtils.h"

- (void)funWithColors
{

  // Use colors straight from the web
  [NSColor colorForHex:@"#fafbfc"];

  // ... if you prefer you can go with bytes
  [NSColor colorWithHexRGB:0xfafbfc];
  [NSColor colorWithHexRGBA:0xfafbfcff];

  // ...or with 0-255 values
  [NSColor colorWithIntegerRed:250 green:251 blue:252];
  [NSColor colorWithIntegerRed:250 green:251 blue:252 alpha:255];

  // ...or if all the channels are the same
  [NSColor colorWithGray:0.980392157]; // 250/255=0.980392157
  [NSColor colorWithIntegerGray:250];  // #fafafa

  // Get a lighter color
  NSColor color* = [NSColor colorForHex:@"#123456"];
  [color colorWithMultiplier:1.10]; // 110% of rgb channels

  // ... or a darker color
  [color colorWithMultiplier:0.90]; // 90% of rgb channels
}
```


## Adding to your project

If you're using [`CocoaPods`](http://cocoapods.org/), there's nothing simpler.
Add the following to your [`Podfile`](http://docs.cocoapods.org/podfile.html)
and run `pod install`

```
pod 'MCNSColorUtils', :git => 'https://github.com/mirego/MCNSColorUtils.git'
```

Don't forget to `#import "NSColor+MCNSColorsUtils.h"` where it's needed.


## License

MCNSColorUtils is © 2013 [Mirego](http://www.mirego.com) and may be freely
distributed under the [New BSD license](http://opensource.org/licenses/BSD-3-Clause).
See the [`LICENSE.md`](https://github.com/mirego/MCNSColorUtils/blob/master/LICENSE.md) file.

## About Mirego

[Mirego](http://mirego.com) is a team of passionate people who believe that work is a place where you can innovate and have fun. We're a team of [talented people](http://life.mirego.com) who imagine and build beautiful Web and mobile applications. We come together to share ideas and [change the world](http://mirego.org).

We also [love open-source software](http://open.mirego.com) and we try to give back to the community as much as we can.
