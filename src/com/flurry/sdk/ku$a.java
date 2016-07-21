package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ku$a
  implements lb<ku>
{
  public ku a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {}
    ku localku;
    int i;
    do
    {
      return null;
      paramInputStream = new ku.a.2(this, paramInputStream);
      localku = new ku(null);
      i = paramInputStream.readShort();
    } while (i == 0);
    ku.a(localku, new byte[i]);
    paramInputStream.readFully(ku.a(localku));
    if (paramInputStream.readUnsignedShort() == 0) {}
    return localku;
  }
  
  public void a(OutputStream paramOutputStream, ku paramku)
  {
    if ((paramOutputStream == null) || (paramku == null)) {
      return;
    }
    paramOutputStream = new ku.a.1(this, paramOutputStream);
    paramOutputStream.writeShort(ku.a(paramku).length);
    paramOutputStream.write(ku.a(paramku));
    paramOutputStream.writeShort(0);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ku.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */