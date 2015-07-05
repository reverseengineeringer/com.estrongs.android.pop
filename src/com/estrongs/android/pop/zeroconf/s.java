package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;

public class s
  extends n
{
  private final int c;
  private final int d;
  private final int e;
  private final String f;
  
  public s(String paramString1, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString2)
  {
    super(paramString1, DNSRecordType.TYPE_SRV, paramDNSRecordClass, paramBoolean, paramInt1);
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
    f = paramString2;
  }
  
  void a(f paramf)
  {
    paramf.b(c);
    paramf.b(d);
    paramf.b(e);
    paramf.a(f);
  }
  
  boolean a(n paramn)
  {
    if (!(paramn instanceof s)) {}
    do
    {
      return false;
      paramn = (s)paramn;
    } while ((c != c) || (d != d) || (e != e) || (!f.equals(f)));
    return true;
  }
  
  String g()
  {
    return f;
  }
  
  public int h()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */