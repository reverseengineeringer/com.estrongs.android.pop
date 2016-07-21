package com.estrongs.android.a;

import com.estrongs.android.a.b.a;
import com.estrongs.android.util.l;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

class f
  implements j
{
  f(b paramb) {}
  
  public void a(String paramString)
  {
    l.e(b.h(), "DiskAnalyzer for App finish!!");
    b.h(a).countDown();
    b.a(a, true);
  }
  
  public void a(String paramString, Map<String, a> paramMap) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */