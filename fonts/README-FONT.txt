LOCAL UNBOUNDED FONT
====================

The HTML files are already configured to load either of these files from this folder:

1. Unbounded-VariableFont_wght.woff2   (preferred)
2. Unbounded-VariableFont_wght.ttf     (fallback)

The web page will continue to work without them because Google Fonts remains as an online fallback.
For immediate self-hosting, copy Unbounded-VariableFont_wght.ttf from your original Unbounded.zip into this folder.

To create WOFF2 locally with Python:

  py -m pip install fonttools brotli
  py -m fontTools.subset Unbounded-VariableFont_wght.ttf --output-file=Unbounded-VariableFont_wght.woff2 --flavor=woff2 --layout-features="*" --unicodes="*"

After the WOFF2 file has been created, leave both files here or remove the TTF fallback.
