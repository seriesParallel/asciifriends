<!-- IE in quirks mode -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<title>Fixed left-sidebar</title>
<style type="text/css">
 body{
  margin:0;
  padding:0 0 0 <length>;
 }
 div#left-sidebar{
  position:absolute;
  top:0;
  left:0;
  width:<length>;
  height:100%;
 }
 @media screen{
  body>div#left-sidebar{
   position:fixed;
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
<div id="left-sidebar"> left-sidebar </div>
<div id="content"> content </div>
