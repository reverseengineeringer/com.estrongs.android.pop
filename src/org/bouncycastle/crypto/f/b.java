package org.bouncycastle.crypto.f;

public class b
  implements org.bouncycastle.crypto.b
{
  private byte[] a;
  private org.bouncycastle.crypto.b b;
  
  public b(org.bouncycastle.crypto.b paramb, byte[] paramArrayOfByte)
  {
    this(paramb, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public b(org.bouncycastle.crypto.b paramb, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = new byte[paramInt2];
    b = paramb;
    System.arraycopy(paramArrayOfByte, paramInt1, a, 0, paramInt2);
  }
  
  public byte[] a()
  {
    return a;
  }
  
  public org.bouncycastle.crypto.b b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */