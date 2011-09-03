Overview
========

About human\_size\_to\_number
-----------------------------

This gem implement the missing reverse of the [ActionView::Helpers::NumberHelper#number\_to\_human\_size](http://apidock.com/rails/ActionView/Helpers/NumberHelper/number_to_human_size).

Usage
-----

    > human_size_to_number("123 Bytes") # => 123
    > human_size_to_number("1.12 KB")   # => 1239.04
    > human_size_to_number("12.1 KB")   # => 12390.4
    > human_size_to_number("1.18 MB")   # => 1237319.68
    > human_size_to_number("1.15 GB")   # => 1234803097.6
    > human_size_to_number("1.12 TB")   # => 1231453023109.12

Project Tracking
----------------

* [human\_size\_to\_number ticket](https://github.com/zedtux/human_size_to_number/issues)
* [human\_size\_to\_number Website and Documentation](https://github.com/zedtux/human_size_to_number/wiki)

Compatibility
-------------

human\_size\_to\_number is tested against REE.

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