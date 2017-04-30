function launchWS(winName) {
    //window height and width
    myHeight = screen.height*.80;
    myWidth = 784;

    //widow height bounds
    if ( myHeight < 556 ) {
      myHeight = 556;
    } else if (myHeight>700) {
      myHeight = 700;
    }

    //get screen size, and cacl center screen positioning
    var height = screen.height;
    var width = screen.width;
    var leftpos = width / 2 - myWidth / 2;
    var toppos = (height / 2 - myHeight / 2) - 40;

    //open window
    msgWindow=window.open(winName,"ws_window","toolbar=no,location=no,directories=no,resizable=yes,menubar=no,scrollbars=no,status=yes,width="
              + myWidth + ",height="+ myHeight + ", left="
              + leftpos + ",top=" + toppos);

    //focus window
    setTimeout('msgWindow.focus()',1);
  }
