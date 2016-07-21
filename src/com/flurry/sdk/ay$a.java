package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ay$a
  implements lb<ay>
{
  private final ax.a a;
  
  public ay$a(ax.a parama)
  {
    a = parama;
  }
  
  public ay a(InputStream paramInputStream)
  {
    Object localObject = null;
    if ((paramInputStream == null) || (a == null)) {
      return null;
    }
    ay.a.2 local2 = new ay.a.2(this, paramInputStream);
    ay localay = new ay(null);
    ay.a(localay, local2.readInt());
    ay.a(localay, local2.readLong());
    paramInputStream = local2.readUTF();
    if (paramInputStream.equals("")) {
      paramInputStream = (InputStream)localObject;
    }
    for (;;)
    {
      ay.a(localay, paramInputStream);
      ay.a(localay, new ArrayList());
      int j = local2.readShort();
      for (int i = 0; i < j; i = (short)(i + 1)) {
        ay.d(localay).add(a.a(local2));
      }
    }
    return localay;
  }
  
  public void a(OutputStream paramOutputStream, ay paramay)
  {
    if ((paramOutputStream == null) || (paramay == null) || (a == null)) {
      return;
    }
    ay.a.1 local1 = new ay.a.1(this, paramOutputStream);
    local1.writeInt(ay.a(paramay));
    local1.writeLong(ay.b(paramay));
    if (ay.c(paramay) == null) {}
    for (paramOutputStream = "";; paramOutputStream = ay.c(paramay))
    {
      local1.writeUTF(paramOutputStream);
      local1.writeShort(ay.d(paramay).size());
      paramOutputStream = ay.d(paramay).iterator();
      while (paramOutputStream.hasNext())
      {
        paramay = (ax)paramOutputStream.next();
        a.a(local1, paramay);
      }
    }
    local1.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */