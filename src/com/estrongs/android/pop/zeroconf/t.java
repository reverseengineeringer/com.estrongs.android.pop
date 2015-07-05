package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;

public class t
  extends n
{
  private final byte[] c;
  
  public t(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramString, DNSRecordType.TYPE_TXT, paramDNSRecordClass, paramBoolean, paramInt);
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0)) {}
    for (;;)
    {
      c = paramArrayOfByte;
      return;
      paramArrayOfByte = b;
    }
  }
  
  void a(f paramf)
  {
    paramf.a(c, 0, c.length);
  }
  
  boolean a(n paramn)
  {
    if (!(paramn instanceof t)) {}
    do
    {
      return false;
      paramn = (t)paramn;
    } while (((c == null) && (c != null)) || (c.length != c.length));
    int j;
    for (int i = c.length;; i = j)
    {
      j = i - 1;
      if (i <= 0) {
        break label75;
      }
      if (c[j] != c[j]) {
        break;
      }
    }
    label75:
    return true;
  }
  
  byte[] g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */