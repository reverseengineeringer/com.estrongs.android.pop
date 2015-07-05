package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.Inet4Address;
import java.net.InetAddress;

public class p
  extends o
{
  p(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
  {
    super(paramString, DNSRecordType.TYPE_A, paramDNSRecordClass, paramBoolean, paramInt, paramInetAddress);
  }
  
  p(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramString, DNSRecordType.TYPE_A, paramDNSRecordClass, paramBoolean, paramInt, paramArrayOfByte);
  }
  
  void a(f paramf)
  {
    Object localObject;
    if (c != null)
    {
      localObject = c.getAddress();
      if (!(c instanceof Inet4Address)) {
        break label34;
      }
    }
    for (;;)
    {
      paramf.a((byte[])localObject, 0, localObject.length);
      return;
      label34:
      byte[] arrayOfByte = new byte[4];
      System.arraycopy(localObject, 12, arrayOfByte, 0, 4);
      localObject = arrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */