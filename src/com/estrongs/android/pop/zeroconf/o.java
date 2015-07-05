package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class o
  extends n
{
  private static Logger d = Logger.getLogger(o.class.getName());
  InetAddress c;
  
  protected o(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean, paramInt);
    c = paramInetAddress;
  }
  
  protected o(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean, paramInt);
    try
    {
      c = InetAddress.getByAddress(paramArrayOfByte);
      return;
    }
    catch (UnknownHostException paramString)
    {
      d.log(Level.WARNING, "Address() exception ", paramString);
    }
  }
  
  boolean a(n paramn)
  {
    if (!(paramn instanceof o)) {}
    do
    {
      return false;
      paramn = (o)paramn;
    } while ((g() == null) && (paramn.g() != null));
    return g().equals(paramn.g());
  }
  
  InetAddress g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */