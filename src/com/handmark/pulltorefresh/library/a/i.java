package com.handmark.pulltorefresh.library.a;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;

public class i
{
  public static void a(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      j.a(paramView, paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      j.a(paramView, paramRunnable);
      return;
    }
    paramView.postDelayed(paramRunnable, 16L);
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */