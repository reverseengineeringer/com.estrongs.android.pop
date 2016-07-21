package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;

class ja
  implements View.OnClickListener
{
  ja(PopRemoteImageBrowser paramPopRemoteImageBrowser) {}
  
  public void onClick(View paramView)
  {
    if ((PopRemoteImageBrowser.a(a) == null) || (PopRemoteImageBrowser.a(a).length == 0)) {
      return;
    }
    if (paramView == PopRemoteImageBrowser.b(a)) {
      PopRemoteImageBrowser.a(a, (PopRemoteImageBrowser.c(a) - 1 + PopRemoteImageBrowser.a(a).length) % PopRemoteImageBrowser.a(a).length);
    }
    for (;;)
    {
      PopRemoteImageBrowser.d(a);
      return;
      PopRemoteImageBrowser.a(a, (PopRemoteImageBrowser.c(a) + 1) % PopRemoteImageBrowser.a(a).length);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */