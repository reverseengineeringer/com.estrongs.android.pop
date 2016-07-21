package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.i;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.qa;
import java.util.HashMap;

@me
public class t
  extends FrameLayout
  implements q
{
  private final qa a;
  private final FrameLayout b;
  private final z c;
  private r d;
  private boolean e;
  private boolean f;
  private TextView g;
  private long h;
  private long i;
  private String j;
  private String k;
  
  public t(Context paramContext, qa paramqa, int paramInt, dh paramdh, dg paramdg)
  {
    super(paramContext);
    a = paramqa;
    b = new FrameLayout(paramContext);
    addView(b);
    g.a(paramqa.e());
    d = eb.a(paramContext, paramqa, paramInt, paramdh, paramdg);
    b.addView(d, new FrameLayout.LayoutParams(-1, -1, 17));
    g = new TextView(paramContext);
    g.setBackgroundColor(-16777216);
    o();
    c = new z(this);
    c.b();
    d.a(this);
  }
  
  public static void a(qa paramqa)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "no_video_view");
    paramqa.a("onVideoEvent", localHashMap);
  }
  
  private void a(String paramString, String... paramVarArgs)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", paramString);
    int n = paramVarArgs.length;
    int m = 0;
    paramString = null;
    if (m < n)
    {
      String str = paramVarArgs[m];
      if (paramString == null) {}
      for (paramString = str;; paramString = null)
      {
        m += 1;
        break;
        localHashMap.put(paramString, str);
      }
    }
    a.a("onVideoEvent", localHashMap);
  }
  
  private void o()
  {
    if (!q())
    {
      b.addView(g, new FrameLayout.LayoutParams(-1, -1));
      b.bringChildToFront(g);
    }
  }
  
  private void p()
  {
    if (q()) {
      b.removeView(g);
    }
  }
  
  private boolean q()
  {
    return g.getParent() != null;
  }
  
  private void r()
  {
    if (a.c() == null) {
      break label12;
    }
    label12:
    while (e) {
      return;
    }
    if ((a.c().getWindow().getAttributes().flags & 0x80) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      if (f) {
        break;
      }
      a.c().getWindow().addFlags(128);
      e = true;
      return;
    }
  }
  
  private void s()
  {
    if (a.c() == null) {}
    while ((!e) || (f)) {
      return;
    }
    a.c().getWindow().clearFlags(128);
    e = false;
  }
  
  public void a() {}
  
  public void a(float paramFloat)
  {
    d.a(paramFloat);
  }
  
  public void a(int paramInt)
  {
    d.a(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt3 == 0) || (paramInt4 == 0)) {
      return;
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramInt3 + 2, paramInt4 + 2);
    localLayoutParams.setMargins(paramInt1 - 1, paramInt2 - 1, 0, 0);
    b.setLayoutParams(localLayoutParams);
    requestLayout();
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    d.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void a(String paramString)
  {
    k = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    a("error", new String[] { "what", paramString1, "extra", paramString2 });
  }
  
  public void b()
  {
    if (i == 0L) {
      a("canplaythrough", new String[] { "duration", String.valueOf(d.getDuration() / 1000.0F), "videoWidth", String.valueOf(d.getVideoWidth()), "videoHeight", String.valueOf(d.getVideoHeight()) });
    }
  }
  
  public void c()
  {
    r();
  }
  
  public void d()
  {
    a("pause", new String[0]);
    s();
  }
  
  public void e()
  {
    a("ended", new String[0]);
    s();
  }
  
  public void f()
  {
    o();
    i = h;
  }
  
  public void g()
  {
    if (!TextUtils.isEmpty(k))
    {
      d.setMimeType(j);
      d.setVideoPath(k);
      return;
    }
    a("no_src", new String[0]);
  }
  
  public void h()
  {
    d.d();
  }
  
  public void i()
  {
    d.c();
  }
  
  public void j()
  {
    d.e();
  }
  
  public void k()
  {
    d.f();
  }
  
  public void l()
  {
    TextView localTextView = new TextView(d.getContext());
    localTextView.setText("AdMob - " + d.a());
    localTextView.setTextColor(-65536);
    localTextView.setBackgroundColor(65280);
    b.addView(localTextView, new FrameLayout.LayoutParams(-2, -2, 17));
    b.bringChildToFront(localTextView);
  }
  
  public void m()
  {
    c.a();
    d.b();
    s();
  }
  
  void n()
  {
    long l = d.getCurrentPosition();
    if ((h != l) && (l > 0L))
    {
      p();
      a("timeupdate", new String[] { "time", String.valueOf((float)l / 1000.0F) });
      h = l;
    }
  }
  
  public void setMimeType(String paramString)
  {
    j = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */