package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class be$b
  implements lb<be>
{
  public be a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new be.b.1(this, paramInputStream);
    be localbe = new be(null);
    be.a(localbe, cw.a);
    be.a(localbe, 0L);
    be.b(localbe, 0L);
    be.a(localbe, paramInputStream.readUTF());
    be.c(localbe, paramInputStream.readLong());
    be.d(localbe, paramInputStream.readLong());
    be.a(localbe, paramInputStream.readInt());
    be.b(localbe, paramInputStream.readInt());
    be.c(localbe, paramInputStream.readInt());
    be.d(localbe, paramInputStream.readInt());
    return localbe;
  }
  
  public void a(OutputStream paramOutputStream, be parambe)
  {
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.be.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */