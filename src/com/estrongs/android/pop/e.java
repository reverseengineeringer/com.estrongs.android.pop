package com.estrongs.android.pop;

import android.content.Intent;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiAccountManager.SilentShareListener;

class e
  implements SapiAccountManager.SilentShareListener
{
  e(FexApplication paramFexApplication) {}
  
  public void onSilentShare()
  {
    a.sendBroadcast(new Intent("com.baidu.intent.action.SILENT_SHARE"));
    SapiAccountManager.unregisterSilentShareListener();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */