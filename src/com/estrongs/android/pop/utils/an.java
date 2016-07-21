package com.estrongs.android.pop.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.u;
import com.estrongs.android.ui.theme.at;

public class an
{
  public static void a(Activity paramActivity)
  {
    int i;
    if (ac.a() >= 19)
    {
      at localat = at.a(paramActivity);
      if (localat.o())
      {
        i = localat.c(2131558748);
        if (ac.a() < 21) {
          break label68;
        }
        paramActivity = paramActivity.getWindow();
        paramActivity.clearFlags(201326592);
        paramActivity.getDecorView().setSystemUiVisibility(1792);
        paramActivity.addFlags(Integer.MIN_VALUE);
        paramActivity.setStatusBarColor(i);
      }
    }
    return;
    label68:
    a(paramActivity, true);
    paramActivity = new u(paramActivity);
    paramActivity.a(true);
    paramActivity.a(i);
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    if ((ac.a() >= 19) && (at.a(paramActivity).o()))
    {
      if (ac.a() >= 21)
      {
        paramActivity = paramActivity.getWindow();
        paramActivity.clearFlags(201326592);
        paramActivity.getDecorView().setSystemUiVisibility(1792);
        paramActivity.addFlags(Integer.MIN_VALUE);
        paramActivity.setStatusBarColor(paramInt);
      }
    }
    else {
      return;
    }
    a(paramActivity, true);
    paramActivity = new u(paramActivity);
    paramActivity.a(true);
    paramActivity.a(paramInt);
  }
  
  @TargetApi(19)
  private static void a(Activity paramActivity, boolean paramBoolean)
  {
    paramActivity = paramActivity.getWindow();
    WindowManager.LayoutParams localLayoutParams = paramActivity.getAttributes();
    if (paramBoolean) {}
    for (flags |= 0x4000000;; flags &= 0xFBFFFFFF)
    {
      paramActivity.setAttributes(localLayoutParams);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */