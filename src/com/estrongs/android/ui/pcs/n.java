package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.SapiWebView.OnBackCallback;

class n
  implements SapiWebView.OnBackCallback
{
  n(l paraml) {}
  
  public void onBack()
  {
    if (l.g(a).canGoBack())
    {
      l.g(a).goBack();
      return;
    }
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */