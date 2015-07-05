package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.SapiWebView.OnBackCallback;

class ao
  implements SapiWebView.OnBackCallback
{
  ao(SocialLoginActivity paramSocialLoginActivity, SapiWebView paramSapiWebView) {}
  
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
 * Qualified Name:     com.estrongs.android.ui.pcs.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */