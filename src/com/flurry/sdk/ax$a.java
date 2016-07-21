package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ax$a
  implements lb<ax>
{
  public ax a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new ax.a.2(this, paramInputStream);
    ax localax = new ax(null);
    ax.a(localax, paramInputStream.readUTF());
    ax.a(localax, paramInputStream.readBoolean());
    ax.a(localax, paramInputStream.readLong());
    ax.a(localax, new HashMap());
    int j = paramInputStream.readShort();
    for (int i = 0; i < j; i = (short)(i + 1)) {
      ax.d(localax).put(paramInputStream.readUTF(), paramInputStream.readUTF());
    }
    return localax;
  }
  
  public void a(OutputStream paramOutputStream, ax paramax)
  {
    if ((paramOutputStream == null) || (paramax == null)) {
      return;
    }
    paramOutputStream = new ax.a.1(this, paramOutputStream);
    paramOutputStream.writeUTF(ax.a(paramax));
    paramOutputStream.writeBoolean(ax.b(paramax));
    paramOutputStream.writeLong(ax.c(paramax));
    paramOutputStream.writeShort(ax.d(paramax).size());
    paramax = ax.d(paramax).entrySet().iterator();
    while (paramax.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramax.next();
      paramOutputStream.writeUTF((String)localEntry.getKey());
      paramOutputStream.writeUTF((String)localEntry.getValue());
    }
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ax.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */