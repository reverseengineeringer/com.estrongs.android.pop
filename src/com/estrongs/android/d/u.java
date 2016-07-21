package com.estrongs.android.d;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.ui.dialog.ProgressDialog;

public class u
{
  private static Handler a = new Handler();
  private static ProgressDialog b = null;
  private static boolean c = false;
  private static Object d = new Object();
  
  public static final void a()
  {
    synchronized (d)
    {
      if (!c) {
        return;
      }
      a.post(new w());
      return;
    }
  }
  
  public static final void a(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2));
  }
  
  public static final void a(Context paramContext, String paramString1, String paramString2)
  {
    synchronized (d)
    {
      if (c)
      {
        ProgressDialog localProgressDialog = b;
        if (localProgressDialog == null) {}
      }
    }
    try
    {
      b.dismiss();
      c = true;
      b = ProgressDialog.a(paramContext, paramString1, paramString2, true, true, new v(paramContext));
      b.show();
      return;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */