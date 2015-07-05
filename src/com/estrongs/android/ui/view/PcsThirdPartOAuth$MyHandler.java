package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;

public class PcsThirdPartOAuth$MyHandler
{
  Handler mHandler;
  
  public PcsThirdPartOAuth$MyHandler(Handler paramHandler)
  {
    mHandler = paramHandler;
  }
  
  @JavascriptInterface
  public void show(String paramString)
  {
    Message localMessage = mHandler.obtainMessage(5);
    obj = paramString;
    mHandler.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.PcsThirdPartOAuth.MyHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */