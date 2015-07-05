package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;

public class t
{
  private static Object c = new Object();
  private Context a;
  private Handler b;
  
  public t(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a()
  {
    a(true);
  }
  
  public void a(Handler paramHandler)
  {
    b = paramHandler;
  }
  
  public void a(boolean paramBoolean)
  {
    new Thread(new u(this, paramBoolean)).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */