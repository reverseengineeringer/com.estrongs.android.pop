package com.estrongs.android.view;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import com.estrongs.android.ui.dialog.cv;

class gl
  implements View.OnLongClickListener
{
  gl(WebViewWrapper paramWebViewWrapper) {}
  
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
      paramView = new cv(a.ag);
      paramView.a((CharSequence)localObject);
      String str1 = a.j(2131230883);
      String str2 = a.j(2131230892);
      String str3 = a.j(2131232334);
      localObject = new gm(this, (String)localObject);
      paramView.a(new String[] { str1, str2, str3 }, -1, (DialogInterface.OnClickListener)localObject);
      paramView.d(false).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */