package com.estrongs.android.ui.f;

import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.estrongs.android.ui.adapter.dq;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.widget.bc;

public class k
  extends bc
{
  private static k g = null;
  private dq h;
  private at i;
  private ListView j;
  
  public static void a()
  {
    if (g != null) {
      g.i();
    }
    g = null;
  }
  
  protected void b()
  {
    i = at.a(e);
    j = new ListView(e);
    j.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    j.setDivider(i.a(2130838600));
    j.setCacheColorHint(i.c(17170445));
    j.setSelector(i.a(2130838297, 2130838089));
    h = new dq(e, true);
    j.setAdapter(h);
    j.setOnItemClickListener(h);
    j.setPadding(0, 0, 0, 16);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    a(j, localLayoutParams);
  }
  
  public void c()
  {
    try
    {
      super.c();
      h.notifyDataSetChanged();
      j.setSelection(0);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */