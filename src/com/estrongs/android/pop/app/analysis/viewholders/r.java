package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.a.b.f;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.fs.util.j;

public class r
  extends t
{
  private Context a;
  
  public r(Context paramContext, View paramView, String paramString)
  {
    super(paramView, paramString);
    a = paramContext;
  }
  
  public void a(g paramg)
  {
    long l2 = 0L;
    paramg = (f)b;
    itemView.setBackgroundResource(2130837621);
    h.setClickable(false);
    h.setButtonDrawable(2130837990);
    e.a(paramg, d);
    e.setText(paramg.getName());
    long l1 = paramg.length();
    if (i.equals("internal_storage")) {
      l1 = paramg.b();
    }
    if (l1 < 0L) {
      l1 = l2;
    }
    for (;;)
    {
      f.setText(j.c(l1));
      g.setGravity(19);
      g.setText(paramg.m());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */