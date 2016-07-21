package com.estrongs.android.pop.app.analysis.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.PopupWindow;
import com.estrongs.android.pop.app.analysis.AnalysisResultActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

public class b
{
  private Context a;
  private View b;
  private i c;
  private AnalysisLoadingFloatView d;
  private PopupWindow e;
  private ci f;
  private Handler g = new Handler();
  private boolean h;
  private boolean i;
  private h j;
  private String k;
  
  public b(Context paramContext, View paramView, boolean paramBoolean)
  {
    a = paramContext;
    b = paramView;
    h = paramBoolean;
    f();
    g();
  }
  
  private int a(int paramInt)
  {
    return a.getResources().getDimensionPixelSize(paramInt);
  }
  
  private void f()
  {
    c = new i(a, h);
    c.a(new e(this));
  }
  
  private void g()
  {
    d = new AnalysisLoadingFloatView(a);
    d.setOnClickListener(new f(this));
    e = new PopupWindow(-2, -2);
    e.setBackgroundDrawable(new BitmapDrawable());
    e.setFocusable(false);
    e.setTouchable(false);
    e.setOutsideTouchable(false);
    e.setContentView(LayoutInflater.from(a).inflate(2130903088, null));
  }
  
  private void h()
  {
    if (f == null) {
      f = new cv(a).a(a.getString(2131231714)).b(a.getString(2131230940)).b(2131231273, new g(this)).c(2131231269, null).b();
    }
    f.show();
  }
  
  private void i()
  {
    try
    {
      if (j != null) {
        j.a();
      }
      i = true;
      if (c.b())
      {
        a();
        return;
      }
      c();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      j();
    }
  }
  
  private void j()
  {
    try
    {
      if ((f != null) && (f.isShowing()) && (!((Activity)a).isFinishing())) {
        f.dismiss();
      }
      if ((e != null) && (e.isShowing()) && (!((Activity)a).isFinishing())) {
        e.dismiss();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    c.a(true);
    d.b();
    i = false;
  }
  
  private void k()
  {
    j();
    try
    {
      if (!((Activity)a).isFinishing()) {
        AnalysisResultActivity.a(a, k);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a()
  {
    k();
  }
  
  public void a(h paramh)
  {
    j = paramh;
  }
  
  public void a(String paramString)
  {
    if (c.b()) {
      return;
    }
    if (d.d()) {
      d.b();
    }
    if (!paramString.equals(k)) {
      j();
    }
    while (!i)
    {
      k = paramString;
      c.a(b, k);
      return;
    }
    k();
  }
  
  public void a(boolean paramBoolean)
  {
    if (h != paramBoolean)
    {
      h = paramBoolean;
      b.post(new d(this, paramBoolean));
    }
  }
  
  public void b()
  {
    if (d.d()) {
      return;
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(a(2131165306), a(2131165306), 19);
    ((ViewGroup)b).addView(d, localLayoutParams);
    d.a();
  }
  
  public void c()
  {
    int[] arrayOfInt = new int[2];
    d.getLocationOnScreen(arrayOfInt);
    int m = arrayOfInt[0];
    int n = d.getMeasuredWidth();
    int i1 = a.getResources().getDimensionPixelSize(2131165312);
    int i2 = arrayOfInt[1];
    int i3 = (d.getMeasuredHeight() - a.getResources().getDimensionPixelSize(2131165281)) / 2;
    try
    {
      if ((a != null) && (!((Activity)a).isFinishing()))
      {
        e.showAtLocation(d, 0, m + n + i1, i3 + i2);
        g.postDelayed(new c(this), 2500L);
        d.c();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void d()
  {
    c.a();
  }
  
  public void e()
  {
    c.c();
    h();
    if ((a instanceof FileExplorerActivity))
    {
      com.estrongs.android.j.c localc = ((FileExplorerActivity)a).at();
      if (localc != null)
      {
        localc.a("A_loading_back");
        localc.c("analysis", "A_loading_back");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */