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
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.eh;
import com.estrongs.android.ui.adapter.dn;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.widget.bc;

public class g
  extends bc
{
  private static g g = null;
  private dn h;
  private at i;
  private LinearLayout j;
  private ListView k;
  
  public g(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramContext, paramView, paramString, paramInt, paramRect, paramBoolean);
  }
  
  public static g a(View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    if (g == null) {
      g = new g(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
    }
    if ((g.k() != paramInt) || (paramView.getContext() != g.a()))
    {
      g.i();
      g = new g(paramView.getContext(), paramView, paramString, paramInt, paramRect, paramBoolean);
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
      h.a(parameh);
      return;
    }
    catch (NullPointerException parameh) {}
  }
  
  protected void b()
  {
    i = at.a(e);
    if (cu.a(e)) {}
    for (int m = 2130903389;; m = 2130903463)
    {
      View localView = k.a(e).inflate(m, null);
      j = ((LinearLayout)localView.findViewById(2131625629));
      j.setFocusable(true);
      j.setOnClickListener(new h(this));
      k = ((ListView)localView.findViewById(2131625632));
      h = new dn(e, true);
      k.setAdapter(h);
      k.setOnItemClickListener(h);
      ((TextView)l().findViewById(2131625385)).setText(2131231655);
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
          cr localcr = ((FileExplorerActivity)e).O();
          if (localcr == null) {
            break label91;
          }
          h.a(localcr.ay());
          if (ap.bl(localcr.c())) {
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
 * Qualified Name:     com.estrongs.android.ui.f.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */