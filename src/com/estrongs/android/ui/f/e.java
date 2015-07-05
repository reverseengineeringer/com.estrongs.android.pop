package com.estrongs.android.ui.f;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.estrongs.android.pop.app.fz;
import com.estrongs.android.ui.a.da;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.bb;

public class e
  extends bb
{
  private static e g = null;
  private da h;
  private al i;
  private ListView j;
  
  public e(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramContext, paramView, paramString, paramInt, paramRect, paramBoolean);
  }
  
  public static e a(View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    if (g == null) {
      g = new e(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    if ((g.k() != paramInt) || (paramView.getContext() != g.a()))
    {
      g.i();
      g = new e(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    return g;
  }
  
  public static void d()
  {
    if (g != null) {
      g.i();
    }
    g = null;
  }
  
  public Context a()
  {
    return e;
  }
  
  public void a(fz paramfz)
  {
    try
    {
      h.a(paramfz);
      return;
    }
    catch (NullPointerException paramfz) {}
  }
  
  protected void b()
  {
    i = al.a(e);
    j = new ListView(e);
    j.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    j.setDivider(i.a(2130838229));
    j.setCacheColorHint(i.d(17170445));
    j.setSelector(i.a(2130837970, 2130837770));
    h = new da(e, true);
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
 * Qualified Name:     com.estrongs.android.ui.f.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */