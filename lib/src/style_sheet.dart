// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Defines which [TextStyle] objects to use for which Markdown elements.
class MarkdownStyleSheet {
  /// Creates an explicit mapping of [TextStyle] objects to Markdown elements.
  MarkdownStyleSheet({
    this.a,
    this.p,
    this.code,
    this.h1,
    this.h2,
    this.h3,
    this.h4,
    this.h5,
    this.h6,
    this.em,
    this.strong,
    this.blockquote,
    this.img,
    required this.blockSpacing,
    required this.listIndent,
    required this.blockquotePadding,
    required this.blockquoteDecoration,
    required this.codeblockPadding,
    required this.codeblockDecoration,
    required this.horizontalRuleDecoration,
  }) : _styles = <String, TextStyle?>{
          'a': a,
          'p': p,
          'li': p,
          'code': code,
          'pre': p,
          'h1': h1,
          'h2': h2,
          'h3': h3,
          'h4': h4,
          'h5': h5,
          'h6': h6,
          'em': em,
          'strong': strong,
          'blockquote': blockquote,
          'img': img,
        };

  /// Creates a [MarkdownStyleSheet] from the [TextStyle]s in the provided [ThemeData].
  factory MarkdownStyleSheet.fromTheme(ThemeData theme) {
    final tt = theme.textTheme;
    final baseP = tt.bodyMedium ?? const TextStyle(fontSize: 14);
    return new MarkdownStyleSheet(
      a: const TextStyle(color: Colors.blue),
      p: baseP,
      code: TextStyle(
        color: Colors.grey.shade700,
        fontFamily: "monospace",
        fontSize: (baseP.fontSize ?? 14) * 0.85,
      ),
      h1: tt.headlineLarge,
      h2: tt.titleLarge,
      h3: tt.titleMedium,
      h4: tt.bodyLarge,
      h5: tt.bodyLarge,
      h6: tt.bodyLarge,
      em: const TextStyle(fontStyle: FontStyle.italic),
      strong: const TextStyle(fontWeight: FontWeight.bold),
      blockquote: baseP,
      img: baseP,
      blockSpacing: 8.0,
      listIndent: 32.0,
      blockquotePadding: 8.0,
      blockquoteDecoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      codeblockPadding: 8.0,
      codeblockDecoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      horizontalRuleDecoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 5.0, color: Colors.grey),
        ),
      ),
    );
  }

  /// Creates a [MarkdownStyle] from the [TextStyle]s in the provided [ThemeData].
  ///
  /// This constructor uses larger fonts for the headings than in
  /// [MarkdownStyle.fromTheme].
  factory MarkdownStyleSheet.largeFromTheme(ThemeData theme) {
    final tt = theme.textTheme;
    final baseP = tt.bodyMedium ?? const TextStyle(fontSize: 14);
    return new MarkdownStyleSheet(
      a: const TextStyle(color: Colors.blue),
      p: baseP,
      code: TextStyle(
        color: Colors.grey.shade700,
        fontFamily: "monospace",
        fontSize: (baseP.fontSize ?? 14) * 0.85,
      ),
      h1: tt.displayLarge,
      h2: tt.displayMedium,
      h3: tt.displaySmall,
      h4: tt.headlineLarge,
      h5: tt.titleLarge,
      h6: tt.titleMedium,
      em: const TextStyle(fontStyle: FontStyle.italic),
      strong: const TextStyle(fontWeight: FontWeight.bold),
      blockquote: baseP,
      img: baseP,
      blockSpacing: 8.0,
      listIndent: 32.0,
      blockquotePadding: 8.0,
      blockquoteDecoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      codeblockPadding: 8.0,
      codeblockDecoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      horizontalRuleDecoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 5.0, color: Colors.grey),
        ),
      ),
    );
  }

  /// Creates a new [MarkdownStyleSheet] based on the current style, with the
  /// provided parameters overridden.
  MarkdownStyleSheet copyWith({
    TextStyle? a,
    TextStyle? p,
    TextStyle? code,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? em,
    TextStyle? strong,
    TextStyle? blockquote,
    TextStyle? img,
    double? blockSpacing,
    double? listIndent,
    double? blockquotePadding,
    Decoration? blockquoteDecoration,
    double? codeblockPadding,
    Decoration? codeblockDecoration,
    Decoration? horizontalRuleDecoration,
  }) {
    return new MarkdownStyleSheet(
      a: a ?? this.a,
      p: p ?? this.p,
      code: code ?? this.code,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      em: em ?? this.em,
      strong: strong ?? this.strong,
      blockquote: blockquote ?? this.blockquote,
      img: img ?? this.img,
      blockSpacing: blockSpacing ?? this.blockSpacing,
      listIndent: listIndent ?? this.listIndent,
      blockquotePadding: blockquotePadding ?? this.blockquotePadding,
      blockquoteDecoration: blockquoteDecoration ?? this.blockquoteDecoration,
      codeblockPadding: codeblockPadding ?? this.codeblockPadding,
      codeblockDecoration: codeblockDecoration ?? this.codeblockDecoration,
      horizontalRuleDecoration:
          horizontalRuleDecoration ?? this.horizontalRuleDecoration,
    );
  }

  /// The [TextStyle] to use for `a` elements.
  final TextStyle? a;

  /// The [TextStyle] to use for `p` elements.
  final TextStyle? p;

  /// The [TextStyle] to use for `code` elements.
  final TextStyle? code;

  /// The [TextStyle] to use for `h1` elements.
  final TextStyle? h1;

  /// The [TextStyle] to use for `h2` elements.
  final TextStyle? h2;

  /// The [TextStyle] to use for `h3` elements.
  final TextStyle? h3;

  /// The [TextStyle] to use for `h4` elements.
  final TextStyle? h4;

  /// The [TextStyle] to use for `h5` elements.
  final TextStyle? h5;

  /// The [TextStyle] to use for `h6` elements.
  final TextStyle? h6;

  /// The [TextStyle] to use for `em` elements.
  final TextStyle? em;

  /// The [TextStyle] to use for `strong` elements.
  final TextStyle? strong;

  /// The [TextStyle] to use for `blockquote` elements.
  final TextStyle? blockquote;

  /// The [TextStyle] to use for `img` elements.
  final TextStyle? img;

  /// The amount of vertical space to use between block-level elements.
  final double blockSpacing;

  /// The amount of horizontal space to indent list items.
  final double listIndent;

  /// The padding to use for `blockquote` elements.
  final double blockquotePadding;

  /// The decoration to use behind `blockquote` elements.
  final Decoration blockquoteDecoration;

  /// The padding to use for `pre` elements.
  final double codeblockPadding;

  /// The decoration to use behind for `pre` elements.
  final Decoration codeblockDecoration;

  /// The decoration to use for `hr` elements.
  final Decoration horizontalRuleDecoration;

  /// A [Map] from element name to the corresponding [TextStyle] object.
  Map<String, TextStyle?> get styles => _styles;
  Map<String, TextStyle?> _styles;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MarkdownStyleSheet) return false;
    final MarkdownStyleSheet typedOther = other;
    return typedOther.a == a &&
        typedOther.p == p &&
        typedOther.code == code &&
        typedOther.h1 == h1 &&
        typedOther.h2 == h2 &&
        typedOther.h3 == h3 &&
        typedOther.h4 == h4 &&
        typedOther.h5 == h5 &&
        typedOther.h6 == h6 &&
        typedOther.em == em &&
        typedOther.strong == strong &&
        typedOther.blockquote == blockquote &&
        typedOther.img == img &&
        typedOther.blockSpacing == blockSpacing &&
        typedOther.listIndent == listIndent &&
        typedOther.blockquotePadding == blockquotePadding &&
        typedOther.blockquoteDecoration == blockquoteDecoration &&
        typedOther.codeblockPadding == codeblockPadding &&
        typedOther.codeblockDecoration == codeblockDecoration &&
        typedOther.horizontalRuleDecoration == horizontalRuleDecoration;
  }

  @override
  int get hashCode {
    return hashValues(
      a,
      p,
      code,
      h1,
      h2,
      h3,
      h4,
      h5,
      h6,
      em,
      strong,
      blockquote,
      img,
      blockSpacing,
      listIndent,
      blockquotePadding,
      blockquoteDecoration,
      codeblockPadding,
      codeblockDecoration,
      horizontalRuleDecoration,
    );
  }
}
