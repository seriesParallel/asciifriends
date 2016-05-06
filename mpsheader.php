<!-- IE in quirks mode -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<title>Fixed header</title>
<style type="text/css">
 body{
  margin:0;
  padding: 0 0 0;
 }
 div#header{
  position:absolute;
  top:0;
  left:0;
  width:100%;
  height:100px;
 }
 @media screen{
  body>div#header{
   position: fixed;
  }
 }
 * html body{
  overflow:hidden;
 } 
 * html div#content{
  height:100%;
  overflow:auto;
 }
</style>
<div id="header"> header </div>
<div id="content"> content </div>
