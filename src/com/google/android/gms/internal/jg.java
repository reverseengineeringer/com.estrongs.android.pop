package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@me
public class jg
  extends jr
{
  static final Set<String> a = new HashSet(Arrays.asList(new String[] { "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center" }));
  private String b = "top-right";
  private boolean c = true;
  private int d = 0;
  private int e = 0;
  private int f = -1;
  private int g = 0;
  private int h = 0;
  private int i = -1;
  private final Object j = new Object();
  private final qa k;
  private final Activity l;
  private AdSizeParcel m;
  private ImageView n;
  private LinearLayout o;
  private js p;
  private PopupWindow q;
  private RelativeLayout r;
  private ViewGroup s;
  
  public jg(qa paramqa, js paramjs)
  {
    super(paramqa, "resize");
    k = paramqa;
    l = paramqa.c();
    p = paramjs;
  }
  
  private void b(Map<String, String> paramMap)
  {
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("width"))) {
      i = ae.e().b((String)paramMap.get("width"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("height"))) {
      f = ae.e().b((String)paramMap.get("height"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetX"))) {
      g = ae.e().b((String)paramMap.get("offsetX"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetY"))) {
      h = ae.e().b((String)paramMap.get("offsetY"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("allowOffscreen"))) {
      c = Boolean.parseBoolean((String)paramMap.get("allowOffscreen"));
    }
    paramMap = (String)paramMap.get("customClosePosition");
    if (!TextUtils.isEmpty(paramMap)) {
      b = paramMap;
    }
  }
  
  private int[] d()
  {
    if (!c()) {
      return null;
    }
    if (c) {
      return new int[] { d + g, e + h };
    }
    int[] arrayOfInt1 = ae.e().b(l);
    int[] arrayOfInt2 = ae.e().d(l);
    int i4 = arrayOfInt1[0];
    int i2 = d + g;
    int i3 = e + h;
    int i1;
    if (i2 < 0)
    {
      i1 = 0;
      if (i3 >= arrayOfInt2[0]) {
        break label149;
      }
      i2 = arrayOfInt2[0];
    }
    for (;;)
    {
      return new int[] { i1, i2 };
      i1 = i2;
      if (i + i2 <= i4) {
        break;
      }
      i1 = i4 - i;
      break;
      label149:
      i2 = i3;
      if (f + i3 > arrayOfInt2[1]) {
        i2 = arrayOfInt2[1] - f;
      }
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (p != null) {
      p.a(paramInt1, paramInt2, i, f);
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    synchronized (j)
    {
      d = paramInt1;
      e = paramInt2;
      if ((q != null) && (paramBoolean))
      {
        int[] arrayOfInt = d();
        if (arrayOfInt != null)
        {
          q.update(m.a().a(l, arrayOfInt[0]), m.a().a(l, arrayOfInt[1]), q.getWidth(), q.getHeight());
          b(arrayOfInt[0], arrayOfInt[1]);
        }
      }
      else
      {
        return;
      }
      a(true);
    }
  }
  
  public void a(Map<String, String> paramMap)
  {
    synchronized (j)
    {
      if (l == null)
      {
        b("Not an activity context. Cannot resize.");
        return;
      }
      if (k.h() == null)
      {
        b("Webview is not yet available, size is not set.");
        return;
      }
    }
    if (k.h().f)
    {
      b("Is interstitial. Cannot resize an interstitial.");
      return;
    }
    if (k.m())
    {
      b("Cannot resize an expanded banner.");
      return;
    }
    b(paramMap);
    if (!a())
    {
      b("Invalid width and height options. Cannot resize.");
      return;
    }
    paramMap = l.getWindow();
    if ((paramMap == null) || (paramMap.getDecorView() == null))
    {
      b("Activity context is not ready, cannot get window or decor view.");
      return;
    }
    int[] arrayOfInt = d();
    if (arrayOfInt == null)
    {
      b("Resize location out of screen or close button is not visible.");
      return;
    }
    int i1 = m.a().a(l, i);
    int i2 = m.a().a(l, f);
    Object localObject2 = k.getWebView().getParent();
    if ((localObject2 != null) && ((localObject2 instanceof ViewGroup)))
    {
      ((ViewGroup)localObject2).removeView(k.getWebView());
      if (q == null)
      {
        s = ((ViewGroup)localObject2);
        localObject2 = ae.e().a(k.getWebView());
        n = new ImageView(l);
        n.setImageBitmap((Bitmap)localObject2);
        m = k.h();
        s.addView(n);
        r = new RelativeLayout(l);
        r.setBackgroundColor(0);
        r.setLayoutParams(new ViewGroup.LayoutParams(i1, i2));
        q = ae.e().a(r, i1, i2, false);
        q.setOutsideTouchable(true);
        q.setTouchable(true);
        localObject2 = q;
        if (c) {
          break label1067;
        }
      }
    }
    label1019:
    label1023:
    label1025:
    label1067:
    for (boolean bool = true;; bool = false)
    {
      ((PopupWindow)localObject2).setClippingEnabled(bool);
      r.addView(k.getWebView(), -1, -1);
      o = new LinearLayout(l);
      localObject2 = new RelativeLayout.LayoutParams(m.a().a(l, 50), m.a().a(l, 50));
      String str = b;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        ((RelativeLayout.LayoutParams)localObject2).addRule(10);
        ((RelativeLayout.LayoutParams)localObject2).addRule(11);
        for (;;)
        {
          o.setOnClickListener(new jh(this));
          o.setContentDescription("Close button");
          r.addView(o, (ViewGroup.LayoutParams)localObject2);
          try
          {
            q.showAtLocation(paramMap.getDecorView(), 0, m.a().a(l, arrayOfInt[0]), m.a().a(l, arrayOfInt[1]));
            a(arrayOfInt[0], arrayOfInt[1]);
            k.a(new AdSizeParcel(l, new g(i, f)));
            b(arrayOfInt[0], arrayOfInt[1]);
            d("resized");
            return;
          }
          catch (RuntimeException paramMap)
          {
            b("Cannot show popup window: " + paramMap.getMessage());
            r.removeView(k.getWebView());
            if (s == null) {
              break label1019;
            }
            s.removeView(n);
            s.addView(k.getWebView());
            k.a(m);
            return;
          }
          q.dismiss();
          break;
          b("Webview is detached, probably in the middle of a resize or expand.");
          return;
          if (!str.equals("top-left")) {
            break label1023;
          }
          i1 = 0;
          break label1025;
          if (!str.equals("top-center")) {
            break label1023;
          }
          i1 = 1;
          break label1025;
          if (!str.equals("center")) {
            break label1023;
          }
          i1 = 2;
          break label1025;
          if (!str.equals("bottom-left")) {
            break label1023;
          }
          i1 = 3;
          break label1025;
          if (!str.equals("bottom-center")) {
            break label1023;
          }
          i1 = 4;
          break label1025;
          if (!str.equals("bottom-right")) {
            break label1023;
          }
          i1 = 5;
          break label1025;
          ((RelativeLayout.LayoutParams)localObject2).addRule(10);
          ((RelativeLayout.LayoutParams)localObject2).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(10);
          ((RelativeLayout.LayoutParams)localObject2).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(13);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(11);
        }
        i1 = -1;
        switch (i1)
        {
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (j)
    {
      if (q != null)
      {
        q.dismiss();
        r.removeView(k.getWebView());
        if (s != null)
        {
          s.removeView(n);
          s.addView(k.getWebView());
          k.a(m);
        }
        if (paramBoolean)
        {
          d("default");
          if (p != null) {
            p.z();
          }
        }
        q = null;
        r = null;
        s = null;
        o = null;
      }
      return;
    }
  }
  
  boolean a()
  {
    return (i > -1) && (f > -1);
  }
  
  void b(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2 - ae.e().d(l)[0], i, f);
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (j)
      {
        if (q != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    d = paramInt1;
    e = paramInt2;
  }
  
  boolean c()
  {
    Object localObject = ae.e().b(l);
    int[] arrayOfInt = ae.e().d(l);
    int i3 = localObject[0];
    int i1 = localObject[1];
    if ((i < 50) || (i > i3))
    {
      b.e("Width is too small or too large.");
      return false;
    }
    if ((f < 50) || (f > i1))
    {
      b.e("Height is too small or too large.");
      return false;
    }
    if ((f == i1) && (i == i3))
    {
      b.e("Cannot resize to a full-screen ad.");
      return false;
    }
    label188:
    int i2;
    if (c)
    {
      localObject = b;
      i1 = -1;
      switch (((String)localObject).hashCode())
      {
      default: 
        switch (i1)
        {
        default: 
          i2 = d + g + i - 50;
          i1 = e + h;
        }
        break;
      }
    }
    while ((i2 >= 0) && (i2 + 50 <= i3) && (i1 >= arrayOfInt[0]) && (i1 + 50 <= arrayOfInt[1]))
    {
      return true;
      if (!((String)localObject).equals("top-left")) {
        break label188;
      }
      i1 = 0;
      break label188;
      if (!((String)localObject).equals("top-center")) {
        break label188;
      }
      i1 = 1;
      break label188;
      if (!((String)localObject).equals("center")) {
        break label188;
      }
      i1 = 2;
      break label188;
      if (!((String)localObject).equals("bottom-left")) {
        break label188;
      }
      i1 = 3;
      break label188;
      if (!((String)localObject).equals("bottom-center")) {
        break label188;
      }
      i1 = 4;
      break label188;
      if (!((String)localObject).equals("bottom-right")) {
        break label188;
      }
      i1 = 5;
      break label188;
      i1 = d;
      i2 = g + i1;
      i1 = e + h;
      continue;
      i2 = d + g + i / 2 - 25;
      i1 = e + h;
      continue;
      i2 = d + g + i / 2 - 25;
      i1 = e + h + f / 2 - 25;
      continue;
      i1 = d;
      i2 = g + i1;
      i1 = e + h + f - 50;
      continue;
      i2 = d + g + i / 2 - 25;
      i1 = e + h + f - 50;
      continue;
      i2 = d + g + i - 50;
      i1 = e + h + f - 50;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */