package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.compress.bb;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.fs.h;
import java.util.Map;

class ay
  implements co
{
  ay(ak paramak) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    paramRecyclerView = (h)a.e(paramInt);
    paramView = (ESImageView)paramView.findViewById(2131624578);
    if (paramView != null)
    {
      paramView.setLeftCornerImage(null);
      paramView.invalidate();
    }
    if ((paramRecyclerView == null) || (a.E == null) || ((bb)ak.u().get(paramRecyclerView.getAbsolutePath()) != null)) {}
    while (ak.v().get(paramRecyclerView.getAbsolutePath()) != null) {
      return;
    }
    a.E.a(paramRecyclerView);
    try
    {
      c.a(a.ah).a("compress_lb", "lp_open");
      return;
    }
    catch (Exception paramRecyclerView)
    {
      paramRecyclerView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */