package com.flurry.sdk;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class gy$2
  implements View.OnClickListener
{
  gy$2(gy paramgy) {}
  
  public void onClick(View paramView)
  {
    if ((gy.b(a) != null) && (gy.b(a).canGoBack()))
    {
      gy.b(a).goBack();
      return;
    }
    a.a(gy.c.b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */