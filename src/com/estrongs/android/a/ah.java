package com.estrongs.android.a;

import java.util.concurrent.ThreadFactory;

class ah
  implements ThreadFactory
{
  private ah(ab paramab) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setName("Media Analyzer");
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */