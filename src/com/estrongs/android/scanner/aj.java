package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.d.m;
import com.estrongs.android.scanner.d.w;
import com.estrongs.android.util.l;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

class aj
  implements w
{
  aj(af paramaf) {}
  
  public void a()
  {
    if (af.l(a) != null) {
      af.l(a).b();
    }
    long l = System.currentTimeMillis();
    l.e(af.b(), "Expired: " + (l - af.a) + " ms/" + "number: " + af.m(a).get() + "/number matched: " + af.n(a).get());
    a.a();
    if (!af.h(a).e()) {
      af.h(a).f();
    }
  }
  
  public void a(List<d> paramList) {}
  
  public void a(Set<d> paramSet) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */