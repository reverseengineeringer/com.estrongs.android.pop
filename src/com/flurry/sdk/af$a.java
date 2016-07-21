package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class af$a
  implements lb<af>
{
  public af a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new af.a.2(this, paramInputStream);
    af localaf = new af(null);
    af.a(localaf, paramInputStream.readUTF());
    af.a(localaf, as.a(paramInputStream.readInt()));
    af.a(localaf, paramInputStream.readLong());
    af.b(localaf, paramInputStream.readLong());
    af.a(localaf, al.a(paramInputStream.readInt()));
    af.c(localaf, paramInputStream.readLong());
    af.d(localaf, paramInputStream.readLong());
    return localaf;
  }
  
  public void a(OutputStream paramOutputStream, af paramaf)
  {
    if ((paramOutputStream == null) || (paramaf == null)) {
      return;
    }
    paramOutputStream = new af.a.1(this, paramOutputStream);
    paramOutputStream.writeUTF(af.a(paramaf));
    paramOutputStream.writeInt(af.b(paramaf).a());
    paramOutputStream.writeLong(af.c(paramaf));
    paramOutputStream.writeLong(af.d(paramaf));
    paramOutputStream.writeInt(af.e(paramaf).a());
    paramOutputStream.writeLong(af.f(paramaf));
    paramOutputStream.writeLong(af.g(paramaf));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.af.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */