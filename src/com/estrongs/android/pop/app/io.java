package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;

public class io
{
  private static ProgressDialog a = null;
  private static boolean b = false;
  private static Handler c = new Handler();
  
  public static final void a()
  {
    if (!b) {
      return;
    }
    c.post(new ip());
  }
  
  public static final void a(Context paramContext)
  {
    b = true;
    a = new ProgressDialog(paramContext);
    a.setMessage(paramContext.getText(2131427442));
    a.setIndeterminate(true);
    a.setCancelable(true);
    a.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */