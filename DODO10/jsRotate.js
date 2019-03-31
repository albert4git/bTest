/*
 * tstRotate.js
 * Copyright (C) 2019 red <red@red-Swift-SF113-31>
 *
 * Distributed under terms of the MIT license.
 */

<script type="text/javascript">
        function test()
{
        alert(window.document.pic.src);
        //alert msg print like http://localhost/test/pic1.png
        if (document.pic.src=='http://localhost/test/pic1.png'){

                document.pic.src='pic2.png';

        } 
        else if (document.pic.src=='http://localhost/test/pic2.png'){

                document.pic.src='pic1.png';
        }
}

</script>

// <img src="pic1.png" name="pic" onclick="test()"/>
