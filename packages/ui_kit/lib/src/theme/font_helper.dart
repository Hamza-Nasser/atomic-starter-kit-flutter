enum FontFamily {
  roboto;

  @override
  String toString() {
    return switch (this) {
      FontFamily.roboto => 'Roboto',
    };
  }
}
