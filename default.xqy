(:
 : Copyright (c) 2004 Mark Logic Corporation
 :
 : Licensed under the Apache License, Version 2.0 (the "License");
 : you may not use this file except in compliance with the License.
 : You may obtain a copy of the License at
 :
 : http://www.apache.org/licenses/LICENSE-2.0
 :
 : Unless required by applicable law or agreed to in writing, software
 : distributed under the License is distributed on an "AS IS" BASIS,
 : WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 : See the License for the specific language governing permissions and
 : limitations under the License.
 :
 : The use of the Apache License does not indicate that this project is
 : affiliated with the Apache Software Foundation.
 :)


default element namespace = "http://www.w3.org/1999/xhtml"

xdmp:set-response-content-type ("text/html; charset=utf-8");

let $current-user := xdmp:get-current-user()

return
	if ($current-user = "nobody") then
		xdmp:redirect-response ("login.xqy")
	else
<html>
 <body>
  <br/>
  <h2>Welcome { xdmp:get-current-user() }! You are successfully logged in</h2>
  <br/>
   <p>
         Click here to <a href="logout.xqy"> logout </a>
   </p>
  <br/>
  </body>
</html>
