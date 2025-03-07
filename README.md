This is (or should be) a full JavaScript interop package using package:js bindings.

The bindings are generated by machine-reading WebIDL files for types and MDN website for documentation.

Take a look at [MediaStream](https://github.com/jodinathan/js_bindings/blob/main/lib/bindings/mediacapture_streams.dart) file and check out how nice it got with the awesome MDN documentation.

## Sponsor

This package is officially sponsored by Invertase.io <img src="https://static.invertase.io/assets/invertase/invertase-rounded-avatar.png" height="30">

## Usage

```dart
import 'package:js_bindings/js_bindings.dart';

void main() {
  var div = document.createElement('div')
    ..innerHTML = 'Hello world =]';
  
  document.body!.appendChild(div);
}
```

Check the example tab for a more complete example.

## Promise and Future

JS Promises and Dart Futures are different things.  
But this package make them the same! :D

```dart
import 'package:js_bindings/js_bindings.dart';

Future<void> main() async {
  // you can await like regular future
  await window.navigator.mediaDevices.getUserMedia();
  // or 
  window.navigator.mediaDevices.getUserMedia().then((event) {});
}
```

## Enums

Enums like `document.visibilityState` are `Strings` in JS world,
but here we work with enums instead. 
For example `document.visibilityState` is of type `VisibilityState`, which is a `Enum`.  
So all of what is specificied in the W3C IDL files as enums are in fact enums in this package.

## Variadic args

Dart doesn't have the concept of variadic args as JS, so 
we can't make a one to one there. However, we made it that 
variadic arguments are multiplied to 3 optional args of same type.  
Example: `window.console.log(1, 2, 3)` - In this case all arguments are dynamic.

## Todo:

 - [Generate stream for events](https://github.com/jodinathan/js_bindings/issues/6)
 - [Create a builder for JS builtin stuff](https://github.com/jodinathan/js_bindings/issues/7)

## For a better JS interop

If you wish for a better JS interop in Dart, please, thumbs up the following issues:

[Better JS interop in general](https://github.com/dart-lang/sdk/issues/35084)  

## Donation

What about a coffee? 

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate?hosted_button_id=YNCG33GLM3494)
