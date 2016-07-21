package com.estrongs.android.view;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.app.b.k;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller;
import com.estrongs.android.ui.feedback.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import com.estrongs.fs.x;
import java.util.ArrayList;
import java.util.List;

public class er
  extends cr
{
  private RecyclerView a;
  private LinearLayout b;
  private TextView c;
  private k d;
  private long e = 0L;
  
  public er(Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  protected int a()
  {
    return 2130903069;
  }
  
  public void a(int paramInt) {}
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    d.a(true);
  }
  
  public void a(String paramString)
  {
    super.a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (!paramBoolean) {
      d.c();
    }
  }
  
  protected View b(int paramInt)
  {
    return super.b(paramInt);
  }
  
  public h b()
  {
    if (D == null) {
      D = new x("log://");
    }
    return D;
  }
  
  public void b(boolean paramBoolean)
  {
    d.a(paramBoolean);
  }
  
  public String c()
  {
    return "log://";
  }
  
  public int d()
  {
    if (h() != null) {
      return h().size();
    }
    return 0;
  }
  
  public List<h> h()
  {
    return d.b();
  }
  
  protected void i()
  {
    e = System.currentTimeMillis();
    a = ((RecyclerView)b(2131624128));
    c = ((TextView)b(2131624130));
    b = ((LinearLayout)b(2131624127));
    w = ((VerticalRecyclerViewFastScroller)b(2131624129));
    if (w != null)
    {
      w.setRecyclerView(a);
      if (Build.VERSION.SDK_INT >= 14) {
        break label137;
      }
      w.setVisibility(8);
      a.setVerticalScrollBarEnabled(true);
    }
    for (;;)
    {
      d = new k(ag, a);
      d.a(new es(this));
      return;
      label137:
      a.addOnScrollListener(w.getOnScrollListener());
      w.setVisibility(4);
      a.setVerticalScrollBarEnabled(false);
    }
  }
  
  public void i_()
  {
    super.i_();
    c.a(ag);
    if (d != null) {
      d.a();
    }
  }
  
  public void l()
  {
    super.l();
  }
  
  protected void n() {}
  
  public List<h> o()
  {
    return new ArrayList(d.d());
  }
  
  public void s()
  {
    new cv(ag).a(ag.getString(2131231714)).b(ag.getString(2131231666)).b(2131231273, new et(this)).c(2131231269, null).c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */