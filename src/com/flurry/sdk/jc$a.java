package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public class jc$a
  implements lb<jc>
{
  public jc a(InputStream paramInputStream)
  {
    if (paramInputStream == null)
    {
      paramInputStream = null;
      return paramInputStream;
    }
    jc.a.1 local1 = new jc.a.1(this, paramInputStream);
    jc localjc = new jc();
    local1.readUTF();
    local1.readUTF();
    jc.a(localjc, local1.readBoolean());
    jc.a(localjc, local1.readLong());
    for (;;)
    {
      int i = local1.readUnsignedShort();
      paramInputStream = localjc;
      if (i == 0) {
        break;
      }
      paramInputStream = new byte[i];
      local1.readFully(paramInputStream);
      paramInputStream = new iz(paramInputStream);
      jc.a(localjc).add(0, paramInputStream);
    }
  }
  
  public void a(OutputStream paramOutputStream, jc paramjc)
  {
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */