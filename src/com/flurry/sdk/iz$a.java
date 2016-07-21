package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class iz$a
  implements lb<iz>
{
  public iz a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new iz.a.2(this, paramInputStream);
    iz localiz = new iz(null);
    int i = paramInputStream.readUnsignedShort();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramInputStream.readFully(arrayOfByte);
      a = arrayOfByte;
    }
    return localiz;
  }
  
  public void a(OutputStream paramOutputStream, iz paramiz)
  {
    if ((paramOutputStream == null) || (paramiz == null)) {
      return;
    }
    paramOutputStream = new iz.a.1(this, paramOutputStream);
    int i = 0;
    if (a != null) {
      i = a.length;
    }
    paramOutputStream.writeShort(i);
    if (i > 0) {
      paramOutputStream.write(a);
    }
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */