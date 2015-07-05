package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSOptionCode;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import com.estrongs.android.pop.zeroconf.constants.DNSResultCode;
import java.net.DatagramPacket;
import java.net.InetAddress;

public final class a
  extends d
{
  private final DatagramPacket f;
  private final long g;
  private final c h;
  private int i;
  
  public a(DatagramPacket paramDatagramPacket) {}
  
  private n a(InetAddress paramInetAddress)
  {
    String str1 = h.c();
    Object localObject1 = DNSRecordType.typeForIndex(h.a());
    if (localObject1 == DNSRecordType.TYPE_IGNORE) {}
    int j = h.a();
    Object localObject2;
    boolean bool;
    int k;
    int m;
    Object localObject3;
    if (localObject1 == DNSRecordType.TYPE_OPT)
    {
      localObject2 = DNSRecordClass.CLASS_UNKNOWN;
      if ((localObject2 == DNSRecordClass.CLASS_UNKNOWN) && (localObject1 != DNSRecordType.TYPE_OPT)) {}
      bool = ((DNSRecordClass)localObject2).isUnique(j);
      k = h.b();
      m = h.a();
      localObject3 = null;
      switch (b.c[localObject1.ordinal()])
      {
      default: 
        h.skip(m);
        localObject1 = localObject3;
      }
    }
    do
    {
      for (;;)
      {
        if (localObject1 != null) {
          ((n)localObject1).a(paramInetAddress);
        }
        return (n)localObject1;
        localObject2 = DNSRecordClass.classForIndex(j);
        break;
        localObject1 = new p(str1, (DNSRecordClass)localObject2, bool, k, h.a(m));
        continue;
        localObject1 = new q(str1, (DNSRecordClass)localObject2, bool, k, h.a(m));
        continue;
        String str2 = h.c();
        localObject1 = localObject3;
        if (str2.length() > 0)
        {
          localObject1 = new r(str1, (DNSRecordClass)localObject2, bool, k, str2);
          continue;
          localObject1 = new t(str1, (DNSRecordClass)localObject2, bool, k, h.a(m));
          continue;
          localObject1 = new s(str1, (DNSRecordClass)localObject2, bool, k, h.a(), h.a(), h.a(), h.c());
        }
      }
      DNSResultCode.resultCodeForFlags(b(), k);
      localObject1 = localObject3;
    } while ((0xFF0000 & k) >> 16 != 0);
    i = j;
    for (;;)
    {
      localObject1 = localObject3;
      if (h.available() <= 0) {
        break;
      }
      localObject1 = localObject3;
      if (h.available() < 2) {
        break;
      }
      localObject2 = DNSOptionCode.resultCodeForFlags(h.a());
      localObject1 = localObject3;
      if (h.available() < 2) {
        break;
      }
      j = h.a();
      if (h.available() >= j) {
        h.a(j);
      }
      switch (b.b[localObject2.ordinal()])
      {
      }
    }
  }
  
  private g p()
  {
    String str = h.c();
    DNSRecordType localDNSRecordType = DNSRecordType.typeForIndex(h.a());
    if (localDNSRecordType == DNSRecordType.TYPE_IGNORE) {}
    int j = h.a();
    DNSRecordClass localDNSRecordClass = DNSRecordClass.classForIndex(j);
    return g.a(str, localDNSRecordType, localDNSRecordClass, localDNSRecordClass.isUnique(j));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */