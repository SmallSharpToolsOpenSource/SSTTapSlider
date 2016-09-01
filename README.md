TapSlider
=========

The UISlider for iOS does not respond to tap and pan gestures outside of the thumb control. On OS X and other systems a user can tap anywhere on a slider and have the thumb control jump to that position. Having to precisely get your finger onto the thumb control on iOS is sometimes difficult to do. After a few failed attempts it becomes frustrating especially if there are multiple sliders that must be adjusted.

This sample projects shows how the UISlider can be adjusted easily by attaching tap and pan gestures to restore the expected interactions.

## Usage

Place a UISlider on a Storyboard and set the custom class to `SSTTapSlider` in the Identity Inspector. When the slider is initialized the tap and pan gesture recognizers will be attached to add the custom behavior.

## CocoaPods

```ruby
pod 'SSTTapSlider', '~> 0.1'
```

## Carthage

TapSlider can also be built using [Carthage](https://github.com/carthage/carthage).

Add the following line to your Cartfile:

```sh
github "brennanMKE/SSTTapSlider" ~> 0.1
```

## License

MIT

## Contact

Brennan Stehling  
[SmallSharpTools](http://www.smallsharptools.com/)  
[@smallsharptools](https://twitter.com/smallsharptools) (Twitter)  

