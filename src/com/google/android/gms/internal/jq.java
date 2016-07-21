package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@me
public class jq
  extends jr
  implements fq
{
  DisplayMetrics a;
  int b = -1;
  int c = -1;
  int d = -1;
  int e = -1;
  int f = -1;
  int g = -1;
  private final qa h;
  private final Context i;
  private final WindowManager j;
  private final cn k;
  private float l;
  private int m;
  
  public jq(qa paramqa, Context paramContext, cn paramcn)
  {
    super(paramqa);
    h = paramqa;
    i = paramContext;
    k = paramcn;
    j = ((WindowManager)paramContext.getSystemService("window"));
  }
  
  private void g()
  {
    a = new DisplayMetrics();
    Display localDisplay = j.getDefaultDisplay();
    localDisplay.getMetrics(a);
    l = a.density;
    m = localDisplay.getRotation();
  }
  
  private void h()
  {
    int[] arrayOfInt = new int[2];
    h.getLocationOnScreen(arrayOfInt);
    a(m.a().b(i, arrayOfInt[0]), m.a().b(i, arrayOfInt[1]));
  }
  
  private jm i()
  {
    return new jo().b(k.a()).a(k.b()).c(k.f()).d(k.c()).e(k.d()).a();
  }
  
  void a()
  {
    b = m.a().b(a, a.widthPixels);
    c = m.a().b(a, a.heightPixels);
    Object localObject = h.c();
    if ((localObject == null) || (((Activity)localObject).getWindow() == null))
    {
      d = b;
      e = c;
      return;
    }
    localObject = ae.e().a((Activity)localObject);
    d = m.a().b(a, localObject[0]);
    e = m.a().b(a, localObject[1]);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((i instanceof Activity)) {}
    for (int n = ae.e().d((Activity)i)[0];; n = 0)
    {
      b(paramInt1, paramInt2 - n, f, g);
      h.i().a(paramInt1, paramInt2);
      return;
    }
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    c();
  }
  
  void b()
  {
    if (h.h().f)
    {
      f = b;
      g = c;
      return;
    }
    h.measure(0, 0);
    f = m.a().b(i, h.getMeasuredWidth());
    g = m.a().b(i, h.getMeasuredHeight());
  }
  
  public void c()
  {
    g();
    a();
    b();
    e();
    f();
    h();
    d();
  }
  
  void d()
  {
    if (b.a(2)) {
      b.c("Dispatching Ready Event.");
    }
    c(h.l().c);
  }
  
  void e()
  {
    a(b, c, d, e, l, m);
  }
  
  void f()
  {
    jm localjm = i();
    h.a("onDeviceFeaturesReceived", localjm.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */