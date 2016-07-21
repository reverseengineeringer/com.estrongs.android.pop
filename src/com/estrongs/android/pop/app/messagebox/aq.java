package com.estrongs.android.pop.app.messagebox;

import android.os.SystemClock;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class aq
  implements View.OnClickListener
{
  aq(WebActivity paramWebActivity) {}
  
  public void onClick(View paramView)
  {
    WebActivity.a(a, false);
    WebActivity.a(a, SystemClock.currentThreadTimeMillis());
    WebActivity.b(a).reload();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */