Swoole ↔ Open Swoole
====================

This is a Composer metapackage that declares PHP extension of [Swoole](https://www.swoole.com/) to be interchangeable with [Open Swoole](https://openswoole.com/).
It enables PHP projects to declare compatibility with both extensions instead of choosing one or the other.

Metapackages [upscale/ext-swoole](https://github.com/upscalesoftware/ext-swoole) and [upscale/ext-openswoole](https://github.com/upscalesoftware/ext-openswoole) are intended to be used in tandem.

## Motivation

The split of the Swoole community into [Swoole](https://github.com/swoole/swoole-src) and [Open Swoole](https://github.com/openswoole/swoole-src) projects has left its ecosystem at crossroads:
either stick with the original PHP extension or switch over to its fork.

The Swoole projects may eventually diverge significantly, but until then their API remains largely identical.
Most userland PHP code is naturally compatible with both. 
Unfortunately, Composer cannot express dependencies on such mutually exclusive PHP extensions.

Composer metapackages wrapping the extensions come to the rescue!

## Usage

Declare support of both extensions in your `composer.json`:
```diff
     "require": {
-        "ext-swoole": "^4.0"
+        "upscale/ext-swoole": "^4.0",
+        "upscale/ext-openswoole": "^4.0"
     }
```

Presence of either `swoole` or `openswoole` extension will satisfy the requirements.

## Versioning

This metapackage mirrors official releases of [swoole/swoole-src](https://github.com/swoole/swoole-src).
New releases are being tagged automatically on a nightly basis.
The metapackage versions match the extension versions one-to-one.

Specify different constraints for each extension:
```json
{
  "require": {
    "php": "~8.2.0",
    "upscale/ext-swoole": "^4.8.12",
    "upscale/ext-openswoole": "^4.12.0"
  }
}
```
