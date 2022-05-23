# NMSSH

This is a forked project from [original NMSSH](https://github.com/NMSSH/NMSSH). Differences are as follows.

* Changed to Swift Package.
* Libssh2, libssl, libcrypto are removed. You can use [Libssh2Prebuild](https://github.com/MidoriMinato/Libssh2Prebuild) Swift Package to add these libraries.
* SHA256 fingerprint is added.

## Installation

Add NMSSH package with Xcode Swift Package Manager. Enter the following URL in the search box.

`https://github.com/MidoriMinato/NMSSH`

If your project does not already include libssh2, libssl, libcrypto, add Libssh2Prebuild package from Xcode Swift Package Manager. Enter the following URL in the search box.

`https://github.com/MidoriMinato/Libssh2Prebuild`

### Include it in your project

Add `#import NMSSH` to your source file for Swift code.

## What does it look like?

```objc
NMSSHSession *session = [NMSSHSession connectToHost:@"127.0.0.1:22"
                                       withUsername:@"user"];

if (session.isConnected) {
    [session authenticateByPassword:@"pass"];

    if (session.isAuthorized) {
        NSLog(@"Authentication succeeded");
    }
}
    
NSError *error = nil;
NSString *response = [session.channel execute:@"ls -l /var/www/" error:&error];
NSLog(@"List of my sites: %@", response);
    
BOOL success = [session.channel uploadFile:@"~/index.html" to:@"/var/www/9muses.se/"];

[session disconnect];
```

## License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
