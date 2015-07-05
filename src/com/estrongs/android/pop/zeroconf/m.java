package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.util.Set;

class m
  extends g
{
  m(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
  }
  
  public void b(w paramw, Set<n> paramSet)
  {
    String str = a().toLowerCase();
    if (f.equalsIgnoreCase(str))
    {
      if ((g != null) && ((g instanceof Inet4Address))) {
        paramSet.add(new p(f, DNSRecordClass.CLASS_IN, true, 3600, g));
      }
      if ((g != null) && ((g instanceof Inet6Address))) {
        paramSet.add(new q(f, DNSRecordClass.CLASS_IN, true, 3600, g));
      }
      return;
    }
    u localu = h;
    if ((localu != null) && (k.equalsIgnoreCase(str)))
    {
      new l(a(), DNSRecordType.TYPE_PTR, d(), e()).b(paramw, paramSet);
      return;
    }
    a(paramw, paramSet);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */