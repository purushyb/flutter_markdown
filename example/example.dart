// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String _markdownData = """
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

---

## Text Styles
- **Bold text**
- *Italic text*
- ***Bold and italic***
- ~~Strikethrough~~
- `Inline code`
- <u>HTML underline</u>

---

## Paragraph & Line Break
This is a paragraph.  
This is the next line with two spaces above for a line break.

---

## Blockquote
> This is a blockquote.  
> > Nested blockquote.

---

## Lists

### Unordered
- Item 1
  - Subitem 1.1
  - Subitem 1.2
- Item 2

### Ordered
1. First item
2. Second item
   1. Nested item 2.1
   2. Nested item 2.2
3. Third item

---

## Links
- [Inline link](https://example.com)
- [Relative link](./README.md)
- <https://example.com>

---

## Images
![Alt text](https://storage.googleapis.com/cms-storage-bucket/404-dash.65361d7e1dfa118aa63b.png)

---

## Code

### Inline
Use the `print()` function.

### Block
```dart
void main() {
  print("Hello, Markdown!");
}

""";

void main() {
  runApp(new MaterialApp(
      title: "Markdown Demo",
      home: new Scaffold(
          appBar: new AppBar(title: const Text('Markdown Demo')),
          body: const Markdown(data: _markdownData))));
}
