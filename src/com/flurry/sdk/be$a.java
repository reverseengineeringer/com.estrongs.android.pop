package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class be$a
  implements lb<be>
{
  public be a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new be.a.2(this, paramInputStream);
    be localbe = new be(null);
    be.a(localbe, (cw)Enum.valueOf(cw.class, paramInputStream.readUTF()));
    be.a(localbe, paramInputStream.readUTF());
    be.c(localbe, paramInputStream.readLong());
    be.d(localbe, paramInputStream.readLong());
    be.a(localbe, paramInputStream.readLong());
    be.b(localbe, paramInputStream.readInt());
    be.c(localbe, paramInputStream.readInt());
    be.d(localbe, paramInputStream.readInt());
    be.a(localbe, paramInputStream.readInt());
    be.b(localbe, paramInputStream.readLong());
    return localbe;
  }
  
  public void a(OutputStream paramOutputStream, be parambe)
  {
    if ((paramOutputStream == null) || (parambe == null)) {
      return;
    }
    paramOutputStream = new be.a.1(this, paramOutputStream);
    paramOutputStream.writeUTF(be.a(parambe).name());
    paramOutputStream.writeUTF(be.b(parambe));
    paramOutputStream.writeLong(be.c(parambe));
    paramOutputStream.writeLong(be.d(parambe));
    paramOutputStream.writeLong(be.e(parambe));
    paramOutputStream.writeInt(be.f(parambe));
    paramOutputStream.writeInt(be.g(parambe));
    paramOutputStream.writeInt(be.h(parambe));
    paramOutputStream.writeInt(be.i(parambe));
    paramOutputStream.writeLong(be.j(parambe));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.be.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */