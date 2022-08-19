### Example of building a document file from .adoc source

Run the container in interactive mode and pass one command, which is an extension for output file.
It can be 'pdf' or 'html'.
<br> **Defaults to pdf**

1. Build PDF file
   > cat example/document.adoc | docker run -i paluszkiewiczb/asciidoctor-web-pdf:v0.2.0 pdf > out.pdf

   Alternatively, because 'pdf' is default value
   > cat example/document.adoc | docker run -i paluszkiewiczb/asciidoctor-web-pdf:v0.2.0 > out.pdf

2. Build HTML file
   > cat example/document.adoc | docker run -i paluszkiewiczb/asciidoctor-web-pdf:v0.2.0 html > out.html
   