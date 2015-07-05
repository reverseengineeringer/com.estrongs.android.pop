package com.baidu.sapi2.share;

import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiAccountManager.ReceiveShareListener;

class ShareService$a$a
  implements Runnable
{
  ShareService$a$a(ShareService.a parama) {}
  
  public void run()
  {
    if (SapiAccountManager.getReceiveShareListener() != null) {
      SapiAccountManager.getReceiveShareListener().onReceiveShare();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareService.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */