package com.estrongs.android.pop.app.cleaner;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.cleaner.a;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;
import com.estrongs.android.view.w;

class aa
  implements View.OnClickListener
{
  aa(v paramv) {}
  
  public void onClick(View paramView)
  {
    int i = v.i(a).getBottom();
    v.a(a, new b(a.a, i));
    paramView = v.f(a).a();
    long l = a.b.v().c();
    a.b.c(l);
    v.i(a).setAdapter(v.j(a));
    v.j(a).a(paramView);
    a.b.x();
    ai.b(a.a).b(l);
    ai.b(a.a).c(l);
    try
    {
      paramView = c.a(FexApplication.a());
      if (paramView != null)
      {
        paramView.a("C_scanresult_click");
        paramView.c("clean", "C_scanresult_click");
      }
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */