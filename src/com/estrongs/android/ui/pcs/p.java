package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.utils.enums.SocialType;

class p
  extends Handler
{
  p(l paraml) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (what == SocialType.WEIXIN.getType()) {
      return;
    }
    try
    {
      SapiAccountManager.getInstance().getSapiConfiguration();
      Intent localIntent = new Intent(l.b(a), SocialLoginActivity.class);
      localIntent.putExtra("social_type", SocialType.getSocialType(what));
      ((Activity)l.b(a)).startActivityForResult(localIntent, 1001);
      return;
    }
    catch (Throwable paramMessage) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */