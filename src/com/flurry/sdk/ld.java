package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ld<T>
  implements lb<T>
{
  private final String a;
  private final int b;
  private final le<T> c;
  
  public ld(String paramString, int paramInt, le<T> paramle)
  {
    a = paramString;
    b = paramInt;
    c = paramle;
  }
  
  public void a(OutputStream paramOutputStream, T paramT)
  {
    if ((paramOutputStream == null) || (c == null)) {
      return;
    }
    paramOutputStream = new ld.1(this, paramOutputStream);
    paramOutputStream.writeUTF(a);
    paramOutputStream.writeInt(b);
    lb locallb = c.a(b);
    if (locallb == null) {
      throw new IOException("No serializer for version: " + b);
    }
    locallb.a(paramOutputStream, paramT);
    paramOutputStream.flush();
  }
  
  public T b(InputStream paramInputStream)
  {
    if ((paramInputStream == null) || (c == null)) {
      return null;
    }
    paramInputStream = new ld.2(this, paramInputStream);
    Object localObject = paramInputStream.readUTF();
    if (!a.equals(localObject)) {
      throw new IOException("Signature: " + (String)localObject + " is invalid");
    }
    int i = paramInputStream.readInt();
    localObject = c.a(i);
    if (localObject == null) {
      throw new IOException("No serializer for version: " + i);
    }
    return (T)((lb)localObject).b(paramInputStream);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */