package com.estrongs.android.a;

import java.util.concurrent.ThreadFactory;

class u
  implements ThreadFactory
{
  private u(q paramq) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setName("DB Analyzer");
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */