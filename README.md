# modularize-addin
RStudio addin to help modularize Shiny app code

A quick n dirty addin I created to help me modularize a lot of Shiny UI code. Many inputs need to be wrapped in calls to `ns("")`. To make this repetitive work a little bit faster, I created this addin, made the addin bind to the keyboard shortcut `Ctrl+N`, and now I just need to double click on an input id in the UI definition and press `Ctrl+N`, and it automatically becomes a namespaced input.

Use at your own risk, this is extremely undeveloped.
