package com.estrongs.android.view;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.g.c;
import com.estrongs.android.ui.g.h;

class b
  implements View.OnClickListener
{
  b(a parama) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if (w.a("com.baidu.appsearch"))
      {
        if (a.a(a))
        {
          paramView = new Intent("com.baidu.appsearch.extinvoker.LAUNCH");
          paramView.putExtra("id", "1002320z");
          paramView.putExtra("func", "2");
          paramView.addFlags(32);
          paramView.putExtra("backop", "0");
          a.ad.sendBroadcast(paramView);
          return;
        }
        paramView = com.estrongs.android.ui.g.a.a(a.ad).b();
        if (paramView != null)
        {
          paramView.a("http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk");
          paramView = new h(a.ad, paramView);
          paramView.a(false);
          paramView.a(a.l(2131428682) + ":");
          paramView.a();
        }
      }
      else
      {
        paramView = com.estrongs.android.ui.g.a.a(a.ad).b();
        if (paramView != null)
        {
          paramView.a("http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk");
          paramView = new h(a.ad, paramView);
          paramView.a(false);
          paramView.a();
        }
      }
      return;
    }
    catch (Exception paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */