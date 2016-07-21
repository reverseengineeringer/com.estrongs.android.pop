package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.SapiWebView.OnBackCallback;

class ar
  implements SapiWebView.OnBackCallback
{
  ar(SocialLoginActivity paramSocialLoginActivity, SapiWebView paramSapiWebView) {}
  
  public void onBack()
  {
    if (a.canGoBack())
    {
      a.goBack();
      return;
    }
    b.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */