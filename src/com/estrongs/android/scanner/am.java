package com.estrongs.android.scanner;

import java.util.concurrent.ThreadFactory;

public class am
  implements ThreadFactory
{
  private String a;
  
  public am(String paramString)
  {
    a = paramString;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setName(a);
    if (paramRunnable.isDaemon()) {
      paramRunnable.setDaemon(false);
    }
    if (paramRunnable.getPriority() != 5) {
      paramRunnable.setPriority(5);
    }
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */