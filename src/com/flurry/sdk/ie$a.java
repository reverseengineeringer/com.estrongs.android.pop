package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ie$a
  implements lb<ie>
{
  public ie a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new ie.a.2(this, paramInputStream);
    ie localie = new ie();
    ie.a(localie, paramInputStream.readLong());
    ie.a(localie, paramInputStream.readBoolean());
    ie.a(localie, new byte[paramInputStream.readInt()]);
    paramInputStream.readFully(ie.c(localie));
    return localie;
  }
  
  public void a(OutputStream paramOutputStream, ie paramie)
  {
    if ((paramOutputStream == null) || (paramie == null)) {
      return;
    }
    paramOutputStream = new ie.a.1(this, paramOutputStream);
    paramOutputStream.writeLong(ie.a(paramie));
    paramOutputStream.writeBoolean(ie.b(paramie));
    paramOutputStream.writeInt(ie.c(paramie).length);
    paramOutputStream.write(ie.c(paramie));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ie.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */