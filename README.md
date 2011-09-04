Overview
========

About human\_size\_to\_number
-----------------------------

This gem implement the missing reverse of the [ActionView::Helpers::NumberHelper#number\_to\_human\_size](http://apidock.com/rails/ActionView/Helpers/NumberHelper/number_to_human_size).

Usage
-----

    > "123 Bytes".human_size_to_number # => 123
    > "1.12 KB".human_size_to_number   # => 1239
    > "12.1 KB".human_size_to_number   # => 12390
    > "1.18 MB".human_size_to_number   # => 1237320
    > "1.15 GB".human_size_to_number   # => 1234803098
    > "1.12 TB".human_size_to_number   # => 1231453023109

Project Tracking
----------------

* [human\_size\_to\_number ticket](https://github.com/zedtux/human_size_to_number/issues)
* [human\_size\_to\_number Website and Documentation](https://github.com/zedtux/human_size_to_number/wiki)

Compatibility
-------------

human\_size\_to\_number is tested against REE, ruby-head, jruby, 1.8.7, 1.9.2, 1.9.3.

<img src="https://travis-ci.org/zedtux/human_size_to_number.png?branch=master&.png"/>

[Build History](http://travis-ci.org/zedtux/human_size_to_number)


License
-------

Copyright (c) 2011 Guillaume Hain

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Credits
-------

Guillaume Hain: zedtux at zedroot dot com