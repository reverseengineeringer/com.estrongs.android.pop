package com.estrongs.android.scanner;

import com.estrongs.android.scanner.b.b;
import com.estrongs.android.scanner.d.m;
import com.estrongs.android.util.l;
import java.util.concurrent.ExecutorService;

class ai
  implements Runnable
{
  ai(af paramaf) {}
  
  public void run()
  {
    long l1 = System.currentTimeMillis();
    af.f(a).a();
    af.g(a).d();
    af.h(a).d();
    long l2 = System.currentTimeMillis();
    l.e(af.b(), "Expired: " + (l2 - l1) + " ms to load directory cache");
    af.a(a, ab.a().a(true));
    af.j(a).a(af.i(a));
    l.c(af.b(), "start scan...");
    int i = 0;
    while (i < 10)
    {
      af.i(a).execute(af.k(a));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */