package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ip$a
  implements lb<ip>
{
  public ip a(InputStream paramInputStream)
  {
    ip localip = null;
    if (paramInputStream == null) {
      paramInputStream = localip;
    }
    ip.a.2 local2;
    do
    {
      int i;
      do
      {
        return paramInputStream;
        local2 = new ip.a.2(this, paramInputStream);
        i = local2.readShort();
        paramInputStream = localip;
      } while (i == 0);
      localip = new ip();
      ip.a(localip, new byte[i]);
      local2.readFully(ip.a(localip));
      paramInputStream = localip;
    } while (local2.readUnsignedShort() != 0);
    return localip;
  }
  
  public void a(OutputStream paramOutputStream, ip paramip)
  {
    if ((paramOutputStream == null) || (paramip == null)) {
      return;
    }
    paramOutputStream = new ip.a.1(this, paramOutputStream);
    paramOutputStream.writeShort(ip.a(paramip).length);
    paramOutputStream.write(ip.a(paramip));
    paramOutputStream.writeShort(0);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ip.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */