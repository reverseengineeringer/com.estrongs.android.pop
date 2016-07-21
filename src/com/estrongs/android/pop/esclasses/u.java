package com.estrongs.android.pop.esclasses;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import java.lang.reflect.Method;

public class u
{
  private static String a;
  private final w b;
  private boolean c;
  private boolean d;
  private boolean e;
  private View f;
  private View g;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19) {}
    try
    {
      Method localMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[] { String.class });
      localMethod.setAccessible(true);
      a = (String)localMethod.invoke(null, new Object[] { "qemu.hw.mainkeys" });
      return;
    }
    catch (Throwable localThrowable)
    {
      a = null;
    }
  }
  
  @TargetApi(19)
  public u(Activity paramActivity)
  {
    Window localWindow = paramActivity.getWindow();
    ViewGroup localViewGroup = (ViewGroup)localWindow.getDecorView();
    Object localObject;
    if (Build.VERSION.SDK_INT >= 19) {
      localObject = paramActivity.obtainStyledAttributes(new int[] { 16843759, 16843760 });
    }
    try
    {
      c = ((TypedArray)localObject).getBoolean(0, false);
      d = ((TypedArray)localObject).getBoolean(1, false);
      ((TypedArray)localObject).recycle();
      localObject = localWindow.getAttributes();
      if ((0x4000000 & flags) != 0) {
        c = true;
      }
      if ((flags & 0x8000000) != 0) {
        d = true;
      }
      b = new w(paramActivity, c, d, null);
      if (!b.c()) {
        d = false;
      }
      if (c) {
        a(paramActivity, localViewGroup);
      }
      if (d) {
        b(paramActivity, localViewGroup);
      }
      return;
    }
    finally
    {
      ((TypedArray)localObject).recycle();
    }
  }
  
  private void a(Context paramContext, ViewGroup paramViewGroup)
  {
    f = new View(paramContext);
    paramContext = new FrameLayout.LayoutParams(-1, b.b());
    gravity = 48;
    if ((d) && (!b.a())) {
      rightMargin = b.e();
    }
    f.setLayoutParams(paramContext);
    f.setBackgroundColor(-1728053248);
    f.setVisibility(8);
    paramViewGroup.addView(f);
  }
  
  private void b(Context paramContext, ViewGroup paramViewGroup)
  {
    g = new View(paramContext);
    if (b.a()) {
      paramContext = new FrameLayout.LayoutParams(-1, b.d());
    }
    for (gravity = 80;; gravity = 5)
    {
      g.setLayoutParams(paramContext);
      g.setBackgroundColor(-1728053248);
      g.setVisibility(8);
      paramViewGroup.addView(g);
      return;
      paramContext = new FrameLayout.LayoutParams(b.e(), -1);
    }
  }
  
  public int a()
  {
    return b.d();
  }
  
  public void a(int paramInt)
  {
    if (c) {
      f.setBackgroundColor(paramInt);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
    View localView;
    if (c)
    {
      localView = f;
      if (!paramBoolean) {
        break label29;
      }
    }
    label29:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */