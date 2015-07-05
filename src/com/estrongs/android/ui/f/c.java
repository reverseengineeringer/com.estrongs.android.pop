package com.estrongs.android.ui.f;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.fg;
import com.estrongs.android.ui.a.cx;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.widget.bb;

public class c
  extends bb
{
  private static c g = null;
  private al h;
  private View i;
  private cx j;
  private ListView k;
  
  public c(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramContext, paramView, paramString, paramInt, paramRect, paramBoolean);
  }
  
  public static c a(View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    if (g == null) {
      g = new c(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    if ((g.k() != paramInt) || (paramView.getContext() != g.a()))
    {
      g.i();
      g = new c(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
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
      j.a(paramfg);
      return;
    }
    catch (NullPointerException paramfg) {}
  }
  
  protected void b()
  {
    h = al.a(e);
    i = g.a(e).inflate(2130903270, null);
    k = ((ListView)i.findViewById(2131362794));
    j = new cx(e, true);
    k.setAdapter(j);
    k.setOnItemClickListener(j);
    Object localObject = (LinearLayout)i.findViewById(2131362791);
    ((LinearLayout)localObject).setFocusable(true);
    ((ImageView)i.findViewById(2131362792)).setClickable(false);
    ((LinearLayout)localObject).setOnClickListener(new d(this));
    localObject = new FrameLayout.LayoutParams(-1, -1);
    a(i, (FrameLayout.LayoutParams)localObject);
  }
  
  public void c()
  {
    try
    {
      super.c();
      if ((e instanceof FileExplorerActivity))
      {
        aw localaw = ((FileExplorerActivity)e).y();
        if (localaw == null) {
          break label85;
        }
        j.a(localaw.ak());
        if (!am.ba(localaw.c())) {
          break label74;
        }
        j.a(true);
      }
      for (;;)
      {
        j.notifyDataSetChanged();
        k.setSelection(0);
        return;
        label74:
        j.a(false);
        continue;
        label85:
        j.a(null);
      }
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */