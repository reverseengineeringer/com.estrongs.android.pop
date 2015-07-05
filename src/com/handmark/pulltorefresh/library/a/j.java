package com.handmark.pulltorefresh.library.a;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.view.View;

@TargetApi(16)
class j
{
  public static void a(View paramView, Drawable paramDrawable)
  {
    paramView.setBackground(paramDrawable);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    paramView.postOnAnimation(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */