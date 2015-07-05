package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.ui.view.ag;

public class a
{
  public static void a(Activity paramActivity, int paramInt)
  {
    a(paramActivity, paramActivity.getText(paramInt));
  }
  
  public static void a(Activity paramActivity, CharSequence paramCharSequence)
  {
    try
    {
      paramActivity.runOnUiThread(new b(paramActivity, paramCharSequence));
      return;
    }
    catch (Exception paramActivity) {}
  }
  
  public static void a(Activity paramActivity, Runnable paramRunnable)
  {
    paramActivity.runOnUiThread(paramRunnable);
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    a(paramContext, paramContext.getText(paramInt));
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence)
  {
    try
    {
      ag.a(paramContext, paramCharSequence, 0);
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */