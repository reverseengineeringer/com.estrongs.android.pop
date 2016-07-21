package com.estrongs.android.pop.app.cleaner;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.ScanProgressView;
import com.estrongs.android.view.w;
import java.util.Calendar;

public class c
  extends a
{
  private RecyclerView d = b.r();
  private b e;
  private i f;
  private int[] g = new int[2];
  private com.estrongs.android.ui.a.b h = b.t();
  private boolean i = false;
  private boolean j = false;
  
  public c(ESActivity paramESActivity, w paramw)
  {
    super(paramESActivity, paramw);
  }
  
  private float a(int paramInt)
  {
    if (12 >= paramInt) {
      return 1.1F;
    }
    if (15 > paramInt) {
      return 1.2F;
    }
    return 1.3F;
  }
  
  private void a(String paramString)
  {
    try
    {
      com.estrongs.android.j.c localc = com.estrongs.android.j.c.a(a);
      localc.a(paramString);
      localc.c("clean", paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void h()
  {
    Resources localResources = d.getResources();
    g[0] = localResources.getDimensionPixelOffset(2131165589);
    g[1] = localResources.getDrawable(2130838236).getIntrinsicHeight();
  }
  
  public void b()
  {
    b.s().setVisibility(8);
    b.c(true);
    d.setVerticalScrollBarEnabled(false);
    d.setClipToPadding(false);
    b.B();
    d.setPadding(0, g[1], 0, 0);
    RecyclerView.Adapter localAdapter = d.getAdapter();
    if ((localAdapter != null) && ((localAdapter instanceof b))) {}
    for (e = ((b)localAdapter);; e = null)
    {
      if ((e != null) && (1 < e.getItemCount()))
      {
        h();
        d.setBackgroundResource(2130838237);
        a.findViewById(2131624118).setVisibility(0);
        a.findViewById(2131624119).setVisibility(0);
      }
      return;
    }
  }
  
  public void c()
  {
    if (e == null) {}
    for (int k = 0; k == 0; k = e.getItemCount())
    {
      b.w().b();
      b.u().postDelayed(new d(this), 200L);
      return;
    }
    long l = Calendar.getInstance().getTimeInMillis();
    ai.b(a).a(l);
    ai.b(a).l();
    b.u().post(new e(this, k));
  }
  
  public void d()
  {
    b.w().b();
    d.setVerticalScrollBarEnabled(true);
    d.removeAllViews();
    b.a(0L);
    b.z();
    b.A();
    i = true;
  }
  
  public void e()
  {
    ViewGroup localViewGroup = (ViewGroup)d.getParent();
    localViewGroup.findViewById(2131624118).setVisibility(8);
    localViewGroup.findViewById(2131624119).setVisibility(8);
    d.setBackgroundResource(0);
    d.setPadding(0, d.getResources().getDimensionPixelOffset(2131165255), 0, 0);
    f = new i(a, b.D());
    d.setAdapter(f);
  }
  
  public void f()
  {
    b.c(false);
    com.estrongs.android.b.a.e locale = b.q();
    if (locale == null) {
      return;
    }
    if ((Build.VERSION.SDK_INT < 14) && (Build.VERSION.SDK_INT >= 11)) {
      d.setItemAnimator(null);
    }
    for (;;)
    {
      f.a(locale.a());
      d.addOnScrollListener(new h(this));
      return;
      p localp = new p();
      localp.b(100);
      localp.a(d.getHeight());
      d.setItemAnimator(localp);
    }
  }
  
  public boolean g()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */