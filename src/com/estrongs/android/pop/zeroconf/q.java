package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.Inet4Address;
import java.net.InetAddress;

public class q
  extends o
{
  q(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
  {
    super(paramString, DNSRecordType.TYPE_AAAA, paramDNSRecordClass, paramBoolean, paramInt, paramInetAddress);
  }
  
  q(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramString, DNSRecordType.TYPE_AAAA, paramDNSRecordClass, paramBoolean, paramInt, paramArrayOfByte);
  }
  
  void a(f paramf)
  {
    if (c != null)
    {
      byte[] arrayOfByte2 = c.getAddress();
      byte[] arrayOfByte1;
      if ((c instanceof Inet4Address))
      {
        byte[] arrayOfByte3 = new byte[16];
        int i = 0;
        arrayOfByte1 = arrayOfByte3;
        if (i < 16)
        {
          if (i < 11) {
            arrayOfByte3[i] = arrayOfByte2[(i - 12)];
          }
          for (;;)
          {
            i += 1;
            break;
            arrayOfByte3[i] = 0;
          }
        }
      }
      else
      {
        arrayOfByte1 = arrayOfByte2;
      }
      paramf.a(arrayOfByte1, 0, arrayOfByte1.length);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */