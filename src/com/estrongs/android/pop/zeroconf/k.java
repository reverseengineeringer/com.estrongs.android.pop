package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.util.Set;

class k
  extends g
{
  k(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
  }
  
  public void b(w paramw, Set<n> paramSet)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    Object localObject1 = localObject3;
    switch (h.a[c().ordinal()])
    {
    }
    for (;;)
    {
      if (localObject2 != null) {
        paramSet.add(localObject2);
      }
      return;
      localObject1 = localObject3;
      if (g != null)
      {
        localObject1 = localObject3;
        if ((g instanceof Inet4Address)) {
          localObject1 = new p(f, DNSRecordClass.CLASS_IN, true, 3600, g);
        }
      }
      localObject2 = localObject1;
      if (g != null)
      {
        localObject2 = localObject1;
        if ((g instanceof Inet6Address)) {
          localObject2 = new q(f, DNSRecordClass.CLASS_IN, true, 3600, g);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */