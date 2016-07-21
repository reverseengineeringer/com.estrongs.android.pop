package com.estrongs.android.ui.b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.estrongs.a.a;
import com.estrongs.android.view.cg;
import com.estrongs.android.view.ci;
import com.estrongs.android.view.ck;
import com.estrongs.fs.h;
import java.util.List;

class v
  extends cg<h>.ck<h>
{
  v(u paramu)
  {
    super(paramu);
  }
  
  public ci a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (a)((h)a.e(0)).getExtra("task");
    paramViewGroup = new f(u.a(a), paramViewGroup);
    paramViewGroup.b().setTag(paramViewGroup);
    u.b(a).add(paramViewGroup);
    return new ci(paramViewGroup.b());
  }
  
  public void a(ci paramci, int paramInt)
  {
    a locala = (a)((h)a.e(paramInt)).getExtra("task");
    f localf = (f)itemView.getTag();
    localf.c();
    localf.a(locala);
    localf.b(u.c(a));
    localf.a(a.h(paramInt));
    itemView.setFocusable(true);
    itemView.setOnClickListener(new w(this, localf, paramInt));
    if (u.e(a) != null)
    {
      itemView.setOnLongClickListener(new x(this, paramInt));
      b.setOnClickListener(new y(this, paramci, paramInt));
    }
    for (;;)
    {
      a.setOnClickListener(new z(this, localf, paramInt));
      return;
      itemView.setOnLongClickListener(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */