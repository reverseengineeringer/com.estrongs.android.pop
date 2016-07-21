package com.estrongs.android.b.a.b;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.b.a.a;
import com.estrongs.android.j.c;
import com.estrongs.android.ui.view.ak;

class j
  implements View.OnClickListener
{
  String a;
  Context b;
  String c;
  String d;
  a e;
  int f;
  
  j(g paramg, String paramString1, String paramString2, String paramString3, int paramInt, Context paramContext, a parama)
  {
    a = paramString1;
    b = paramContext;
    c = paramString2;
    d = paramString3;
    f = paramInt;
    e = parama;
  }
  
  public void onClick(View paramView)
  {
    if ((d == null) && (d.trim().length() == 0))
    {
      ak.a(b, 2131231690, 1);
      return;
    }
    if (g.a(g, d)) {
      g.a(g, b, d);
    }
    for (;;)
    {
      try
      {
        paramView = c.a(b);
        paramView.a("C_recom_click");
        paramView.c("clean", "C_recom_click");
        return;
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        return;
      }
      if (1 == f) {
        g.a(g, b, c, d, e);
      } else if (c.startsWith("market://")) {
        g.a(g, b, c, d, e);
      } else {
        g.a(g, b, c, e);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */