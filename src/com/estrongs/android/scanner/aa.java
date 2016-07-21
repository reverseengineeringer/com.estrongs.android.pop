package com.estrongs.android.scanner;

import com.estrongs.android.scanner.c.g;
import java.util.concurrent.CountDownLatch;

class aa
  implements Runnable
{
  private g b;
  private CountDownLatch c;
  
  public aa(y paramy, g paramg, CountDownLatch paramCountDownLatch)
  {
    b = paramg;
    c = paramCountDownLatch;
  }
  
  public void run()
  {
    b.a(true);
    c.countDown();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */