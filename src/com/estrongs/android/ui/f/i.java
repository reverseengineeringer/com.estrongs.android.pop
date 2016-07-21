package com.estrongs.android.ui.f;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.eh;
import com.estrongs.android.ui.adapter.dn;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.widget.bc;

public class i
  extends bc
{
  private static i g = null;
  private at h;
  private View i;
  private dn j;
  private ListView k;
  
  public i(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramContext, paramView, paramString, paramInt, paramRect, paramBoolean);
  }
  
  public static i a(View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    if (g == null) {
      g = new i(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    if ((g.k() != paramInt) || (paramView.getContext() != g.a()))
    {
      g.i();
      g = new i(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
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
  
  public void a(eh parameh)
  {
    try
    {
      j.a(parameh);
      return;
    }
    catch (NullPointerException parameh) {}
  }
  
  protected void b()
  {
    h = at.a(e);
    i = k.a(e).inflate(2130903463, null);
    k = ((ListView)i.findViewById(2131625632));
    j = new dn(e, true);
    k.setAdapter(j);
    k.setOnItemClickListener(j);
    Object localObject = (LinearLayout)i.findViewById(2131625629);
    ((LinearLayout)localObject).setFocusable(true);
    ((ImageView)i.findViewById(2131625630)).setClickable(false);
    ((LinearLayout)localObject).setOnClickListener(new j(this));
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
        cr localcr = ((FileExplorerActivity)e).O();
        if (localcr == null) {
          break label85;
        }
        j.a(localcr.ay());
        if (!ap.bl(localcr.c())) {
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
 * Qualified Name:     com.estrongs.android.ui.f.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */