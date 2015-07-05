package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.InetAddress;
import java.util.Collection;
import java.util.Iterator;

public abstract class n
  extends DNSEntry
{
  public static final byte[] b = { 0 };
  private int c;
  private long d;
  private InetAddress e;
  
  n(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    if (paramInt > 3600) {}
    for (c = 3600;; c = paramInt)
    {
      d = System.currentTimeMillis();
      return;
    }
  }
  
  int a(long paramLong)
  {
    return (int)Math.max(0L, (a(100) - paramLong) / 1000L);
  }
  
  long a(int paramInt)
  {
    return d + c * paramInt * 10L;
  }
  
  abstract void a(f paramf);
  
  public void a(InetAddress paramInetAddress)
  {
    e = paramInetAddress;
  }
  
  boolean a(a parama)
  {
    try
    {
      parama = parama.f().iterator();
      while (parama.hasNext())
      {
        boolean bool = b((n)parama.next());
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (ArrayIndexOutOfBoundsException parama) {}
    return false;
  }
  
  abstract boolean a(n paramn);
  
  public boolean b(long paramLong)
  {
    return a(100) <= paramLong;
  }
  
  boolean b(n paramn)
  {
    return (equals(paramn)) && (c > c / 2);
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof n)) && (super.equals(paramObject)) && (a((n)paramObject));
  }
  
  public int f()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */