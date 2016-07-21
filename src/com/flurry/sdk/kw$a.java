package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class kw$a
  implements lb<kw>
{
  public kw a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new kw.a.2(this, paramInputStream);
    kw localkw = new kw(null);
    kw.a(localkw, paramInputStream.readUTF());
    return localkw;
  }
  
  public void a(OutputStream paramOutputStream, kw paramkw)
  {
    if ((paramOutputStream == null) || (paramkw == null)) {
      return;
    }
    paramOutputStream = new kw.a.1(this, paramOutputStream);
    paramOutputStream.writeUTF(kw.a(paramkw));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */