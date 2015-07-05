package com.estrongs.android.view;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import com.estrongs.android.ui.dialog.ct;

class eg
  implements View.OnLongClickListener
{
  eg(WebViewWrapper paramWebViewWrapper) {}
  
  public boolean onLongClick(View paramView)
  {
    paramView = ((WebView)paramView).getHitTestResult();
    if (paramView == null) {
      return false;
    }
    switch (paramView.getType())
    {
    }
    for (;;)
    {
      return true;
      WebViewWrapper.f(a);
      continue;
      Object localObject = paramView.getExtra();
      paramView = new ct(a.ad);
      paramView.a((CharSequence)localObject);
      String str1 = a.l(2131427345);
      String str2 = a.l(2131427388);
      String str3 = a.l(2131427889);
      localObject = new eh(this, (String)localObject);
      paramView.a(new String[] { str1, str2, str3 }, -1, (DialogInterface.OnClickListener)localObject);
      paramView.d(false).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */