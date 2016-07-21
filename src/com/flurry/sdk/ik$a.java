package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ik$a
  implements lb<ik>
{
  public ik a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject = new ik.a.2(this, paramInputStream);
    int i = ((DataInputStream)localObject).readInt();
    long l1 = ((DataInputStream)localObject).readLong();
    long l2 = ((DataInputStream)localObject).readLong();
    boolean bool1 = ((DataInputStream)localObject).readBoolean();
    int j = ((DataInputStream)localObject).readInt();
    paramInputStream = il.a(((DataInputStream)localObject).readInt());
    String str = ((DataInputStream)localObject).readUTF();
    int k = ((DataInputStream)localObject).readInt();
    long l3 = ((DataInputStream)localObject).readLong();
    boolean bool2 = ((DataInputStream)localObject).readBoolean();
    long l4 = ((DataInputStream)localObject).readLong();
    localObject = new ik(null, l1, l2, i);
    d = bool1;
    e = j;
    f = paramInputStream;
    g = str;
    h = k;
    i = l3;
    j = bool2;
    k = l4;
    return (ik)localObject;
  }
  
  public void a(OutputStream paramOutputStream, ik paramik)
  {
    if ((paramOutputStream == null) || (paramik == null)) {
      return;
    }
    paramOutputStream = new ik.a.1(this, paramOutputStream);
    paramOutputStream.writeInt(a);
    paramOutputStream.writeLong(b);
    paramOutputStream.writeLong(c);
    paramOutputStream.writeBoolean(d);
    paramOutputStream.writeInt(e);
    paramOutputStream.writeInt(f.a());
    if (g != null) {
      paramOutputStream.writeUTF(g);
    }
    for (;;)
    {
      paramOutputStream.writeInt(h);
      paramOutputStream.writeLong(i);
      paramOutputStream.writeBoolean(j);
      paramOutputStream.writeLong(k);
      paramOutputStream.flush();
      return;
      paramOutputStream.writeUTF("");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ik.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */