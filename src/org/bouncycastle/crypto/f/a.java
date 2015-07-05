package org.bouncycastle.crypto.f;

import org.bouncycastle.crypto.b;

public class a
  implements b
{
  private byte[] a;
  
  public a(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, a, 0, paramInt2);
  }
  
  public byte[] a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */