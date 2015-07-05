package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.t;
import com.estrongs.android.pop.view.utils.u;
import com.estrongs.android.util.am;

class eh
  implements AdapterView.OnItemClickListener
{
  eh(OpenRecomm paramOpenRecomm) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      paramAdapterView = (t)paramView.getTag();
      if (paramAdapterView != null)
      {
        if (OpenRecomm.a(a) == null) {
          return;
        }
        OpenRecomm.a(a).setClassName(c, d);
        if (e != null) {
          OpenRecomm.a(a).setAction(e);
        }
        if (AppRunner.d(c)) {
          AppRunner.a(OpenRecomm.a(a), 268435456);
        }
        if (OpenRecomm.b(a))
        {
          paramView = am.bA(am.d(OpenRecomm.c(a)));
          if ((paramView != null) && (!"".equals(paramView))) {
            n.a(a, paramView, new u(c, d, e));
          }
        }
        a.startActivity(OpenRecomm.a(a));
        a.finish();
        return;
      }
    }
    catch (Exception paramAdapterView)
    {
      paramAdapterView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */