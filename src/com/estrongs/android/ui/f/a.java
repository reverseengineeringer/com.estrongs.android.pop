package com.estrongs.android.ui.f;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.fg;
import com.estrongs.android.ui.a.cx;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.widget.bb;

public class a
  extends bb
{
  private static a g = null;
  private cx h;
  private al i;
  private LinearLayout j;
  private ListView k;
  
  public a(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramContext, paramView, paramString, paramInt, paramRect, paramBoolean);
  }
  
  public static a a(View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    if (g == null) {
      g = new a(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    if ((g.k() != paramInt) || (paramView.getContext() != g.a()))
    {
      g.i();
      g = new a(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
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
  
  public void a(fg paramfg)
  {
    try
    {
      h.a(paramfg);
      return;
    }
    catch (NullPointerException paramfg) {}
  }
  
  protected void b()
  {
    i = al.a(e);
    if (cl.a(e)) {}
    for (int m = 2130903224;; m = 2130903270)
    {
      View localView = g.a(e).inflate(m, null);
      j = ((LinearLayout)localView.findViewById(2131362795));
      j.setFocusable(true);
      j.setOnClickListener(new b(this));
      k = ((ListView)localView.findViewById(2131362794));
      h = new cx(e, true);
      k.setAdapter(h);
      k.setOnItemClickListener(h);
      ((TextView)l().findViewById(2131362638)).setText(2131427415);
      a(localView, new FrameLayout.LayoutParams(-1, -1));
      return;
    }
  }
  
  public void c()
  {
    label91:
    for (;;)
    {
      try
      {
        super.c();
        if ((e instanceof FileExplorerActivity))
        {
          aw localaw = ((FileExplorerActivity)e).y();
          if (localaw == null) {
            break label91;
          }
          h.a(localaw.ak());
          if (am.ba(localaw.c())) {
            h.a(true);
          }
        }
        else
        {
          h.notifyDataSetChanged();
          k.setSelection(0);
          return;
        }
        h.a(false);
        continue;
        h.a(null);
      }
      catch (NullPointerException localNullPointerException)
      {
        localNullPointerException.printStackTrace();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */