package com.estrongs.android.b.a.b;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;

class f
  implements View.OnClickListener
{
  Context a;
  
  f(d paramd, Context paramContext)
  {
    a = paramContext;
  }
  
  public void onClick(View paramView)
  {
    paramView = a.getPackageName();
    w.a(a, paramView, "pname");
    if ((a instanceof FileExplorerActivity)) {
      paramView = ((FileExplorerActivity)a).at();
    }
    try
    {
      paramView.a("Card_Rate");
      paramView.c("Card_Rate_UV");
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */