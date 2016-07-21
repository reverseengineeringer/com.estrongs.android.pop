package com.flurry.sdk;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class gy$3
  implements View.OnClickListener
{
  gy$3(gy paramgy) {}
  
  public void onClick(View paramView)
  {
    if ((gy.b(a) != null) && (gy.b(a).canGoForward())) {
      gy.b(a).goForward();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */