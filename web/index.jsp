
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>

  </head>
  <body>

  <input type="button" id="dwn-btn" value="Download Exercise17_02.dat"/>

  <script type = "text/JavaScript">
      function download(filename, text) {
          var element = document.createElement('a');
          element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
          element.setAttribute('download', filename);

          element.style.display = 'none';
          document.body.appendChild(element);

          element.click();

          document.body.removeChild(element);
      }

      // Start file download.
      document.getElementById("dwn-btn").addEventListener("click", function(){
          // Generate download of hello.txt file with some content
          var text = Math.floor(Math.random() * 10) + 1+",";
          var filename = "Exercise17_02.dat";
          value = 0;
          while(value < 100) {
              text = text + Math.floor(Math.random() * 10) + 1 + ",";

              value++;
          }


          download(filename, text);
      }, false);
  </script>
  </body>
</html>
