### Example of building .pdf file from .adoc source

1. Preparation phase
   1. Change your working directory to folder 'example'
   2. Create dummy output file in your file system. Name of the file must be the same as input file (in this example: 'document'). Extension for output files is .pdf or .html
      > touch document.pdf
   3. Give r/w permissions for everyone
      > chmod 666 document.pdf
2. Generation phase
   1. Build an image
      > docker build . -t example
   2. Run the image with output file mounted in /home/node/<nameOfTheFile>.pdf
      > docker run -v $(pwd)/document.pdf:/home/node/document.pdf:rw example
      
Your file document.pdf should be generated and available on your disk :)

### Example of building .html file from .adoc source
Steps are the same as for .pdf file, except extension of the file - change it from .pdf to .html. 
