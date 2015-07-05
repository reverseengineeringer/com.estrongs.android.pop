package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;

public class r
  extends n
{
  private final String c;
  
  public r(String paramString1, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, String paramString2)
  {
    super(paramString1, DNSRecordType.TYPE_PTR, paramDNSRecordClass, paramBoolean, paramInt);
    c = paramString2;
  }
  
  void a(f paramf)
  {
    paramf.a(c);
  }
  
  boolean a(n paramn)
  {
    if (!(paramn instanceof r)) {}
    do
    {
      return false;
      paramn = (r)paramn;
    } while ((c == null) && (c != null));
    return c.equals(c);
  }
  
  String g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */