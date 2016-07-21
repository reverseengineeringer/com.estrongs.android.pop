package com.estrongs.android.ui.pcs;

import android.content.Intent;
import com.baidu.sapi2.shell.listener.AuthorizationListener;

class at
  extends AuthorizationListener
{
  at(SocialLoginActivity paramSocialLoginActivity) {}
  
  public void onFailed(int paramInt, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("result_code", paramInt);
    localIntent.putExtra("result_msg", paramString);
    a.setResult(1002, localIntent);
    a.finish();
  }
  
  public void onSuccess()
  {
    a.setResult(1001);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */