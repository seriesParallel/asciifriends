<!-- IE in quirks mode -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<title>Fixed footer</title>
<style type="text/css">
 body{
  margin:0;
  padding:0 0 <length> 0;
 }
 div#footer{
  position:absolute;
  bottom:0;
  left:0;
  width:100%;
  height:<length>;
 }
 @media screen{
  body>div#footer{
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
<div id="footer"> footer </div>
<div id="content"> content </div>
