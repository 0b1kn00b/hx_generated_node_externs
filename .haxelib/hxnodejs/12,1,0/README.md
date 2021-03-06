![hxnodejs](hxnodejs.png)

# Haxe Node.JS

[![Build Status](https://badgen.net/travis/HaxeFoundation/hxnodejs?label=build)](https://travis-ci.org/HaxeFoundation/hxnodejs)
[![Haxelib Version](https://badgen.net/haxelib/v/hxnodejs)](https://lib.haxe.org/p/hxnodejs)
[![Haxelib Downloads](https://badgen.net/haxelib/d/hxnodejs?color=blue)](https://lib.haxe.org/p/hxnodejs)
[![Haxelib License](https://badgen.net/haxelib/license/hxnodejs)](LICENSE.md)

Extern type definitions for Node.JS. Haxe **3.4** or newer is required.

Haxe-generated API documentation is available at http://haxefoundation.github.io/hxnodejs/js/Node.html.

Original node.js documentation can be found at http://nodejs.org/api/index.html.

## Features

 - Full node.js API with documentation.
 - Strict typing for everything, fully leveraging Haxe type system.
 - Optionally typed event listeners.
 - Automatic insert of "require" statements for used modules.
 - Clean output.

## Quick example

1. Install hxnodejs with `haxelib install hxnodejs` (released version) or `haxelib git hxnodejs https://github.com/HaxeFoundation/hxnodejs` (latest from GitHub).
2. Write some code and save to `Main.hx`:

    ```haxe
    class Main {
        static function main() {
            var server = js.node.Net.createServer(function(socket) {
                socket.write("Echo server\n\n");
                socket.pipe(socket);
            });
            server.listen(1337, "127.0.0.1");
        }
    }
    ```

3. Compile it with with `haxe -lib hxnodejs -main Main -js main.js` (optionally add `-D js-es=6` for cleaner JavaScript output, since node.js is ES6-compliant)
4. Look at generated `main.js`:

    ```js
    // Generated by Haxe 4.0.0-rc.2+63144f6db
    (function ($global) { "use strict";
    class Main {
        static main() {
            var server = js_node_Net.createServer(function(socket) {
                socket.write("Echo server\n\n");
                socket.pipe(socket);
            });
            server.listen(1337,"127.0.0.1");
        }
    }
    var js_node_Net = require("net");
    Main.main();
    })({});
    ```

5. You're awesome! (See more [examples](examples))

## Status

This library is considered complete, but testing and contributions are welcome. See [current issues](https://github.com/HaxeFoundation/hxnodejs/issues) and [extern guidelines](https://github.com/HaxeFoundation/hxnodejs/blob/master/HOWTO.md).

