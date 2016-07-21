package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.b.a.a;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;

class af
  implements View.OnClickListener
{
  Context a;
  String b;
  String c;
  a d;
  int e;
  
  af(ae paramae, String paramString1, String paramString2, int paramInt, Context paramContext, a parama)
  {
    a = paramContext;
    b = paramString1;
    c = paramString2;
    e = paramInt;
    d = parama;
  }
  
  public void onClick(View paramView)
  {
    if ((c == null) && (c.trim().length() == 0)) {
      ak.a(a, 2131231690, 1);
    }
    c localc;
    do
    {
      return;
      if (w.a(c)) {
        ae.a(f, a, c);
      }
      for (;;)
      {
        try
        {
          paramView = d.j();
          localc = c.a(a);
          if (!ap.bC(paramView)) {
            break;
          }
          localc.a("A_sd_recom_click");
          localc.c("recommend_card", "A_sd_recom_click");
          return;
        }
        catch (Exception paramView)
        {
          paramView.printStackTrace();
          return;
        }
        ae.a(f, a, b, c, d);
      }
    } while (!ap.ai(paramView));
    localc.a("A_app_recom_click");
    localc.c("recommend_card", "A_app_recom_click");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */