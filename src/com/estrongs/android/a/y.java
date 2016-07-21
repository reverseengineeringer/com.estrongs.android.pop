package com.estrongs.android.a;

import java.util.concurrent.ThreadFactory;

class y
  implements ThreadFactory
{
  private String b;
  
  public y(v paramv, String paramString)
  {
    b = paramString;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setName(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */