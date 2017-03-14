<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    ${resfn.js(["/react-component/webresources/js/.*react.js",
                "/react-component/webresources/js/.*react-dom.js",
                "/react-component/webresources/js/.*babel.min.js",
                "/react-component/webresources/js/.*js"])!}
  </head>
  <body class="react-home ${cmsfn.language()}">

    [@cms.area name="main"/]

  </body>
</html>

