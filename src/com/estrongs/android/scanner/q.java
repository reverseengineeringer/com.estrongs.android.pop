package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.g;
import com.estrongs.fs.a.b;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

class q
  implements Runnable
{
  q(l paraml, boolean paramBoolean) {}
  
  public void run()
  {
    g localg = new g();
    localg.a(new r(this, b.a()));
    if ((a) && (l.e(b).decrementAndGet() == 0))
    {
      com.estrongs.android.util.l.e("Cataloger", "打开文件监控!");
      l.f(b).set(false);
    }
    l.a(b, localg);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */