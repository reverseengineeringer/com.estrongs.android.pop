package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.util.Set;

public class g
  extends DNSEntry
{
  g(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
  }
  
  public static g a(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    switch (h.a[paramDNSRecordType.ordinal()])
    {
    default: 
      return new g(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 1: 
      return new j(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 2: 
      return new k(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 3: 
      return new k(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 4: 
      return new i(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 5: 
      return new l(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }
    return new m(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
  }
  
  protected void a(w paramw, Set<n> paramSet)
  {
    if ((paramw != null) && (h != null))
    {
      u localu = h;
      if ((a().equalsIgnoreCase(k)) || (a().equalsIgnoreCase(c)))
      {
        if ((g != null) && ((g instanceof Inet4Address))) {
          paramSet.add(new p(f, DNSRecordClass.CLASS_IN, true, 3600, g));
        }
        if ((g != null) && ((g instanceof Inet6Address))) {
          paramSet.add(new q(f, DNSRecordClass.CLASS_IN, true, 3600, g));
        }
        paramSet.add(new r(w.a, DNSRecordClass.CLASS_IN, false, 3600, k));
        paramSet.add(new s(k, DNSRecordClass.CLASS_IN, true, 3600, 0, 0, d, f));
      }
    }
  }
  
  public void b(w paramw, Set<n> paramSet) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */