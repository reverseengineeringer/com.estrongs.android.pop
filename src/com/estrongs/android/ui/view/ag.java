package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Toast;
import com.estrongs.android.pop.FexApplication;

public class ag
{
  private static Toast a;
  
  @SuppressLint({"ShowToast"})
  public static void a()
  {
    try
    {
      a = Toast.makeText(FexApplication.a(), "", 0);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    try
    {
      a(paramContext, FexApplication.a().getText(paramInt1), paramInt2);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence, int paramInt)
  {
    try
    {
      a.setText(paramCharSequence);
      a.setDuration(paramInt);
      a.show();
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void b()
  {
    try
    {
      a.cancel();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */