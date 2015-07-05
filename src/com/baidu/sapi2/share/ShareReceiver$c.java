package com.baidu.sapi2.share;

import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiAccountManager.ReceiveShareListener;

class ShareReceiver$c
  implements Runnable
{
  ShareReceiver$c(ShareReceiver paramShareReceiver) {}
  
  public void run()
  {
    if (SapiAccountManager.getReceiveShareListener() != null) {
      SapiAccountManager.getReceiveShareListener().onReceiveShare();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareReceiver.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */