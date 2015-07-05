package org.bouncycastle.crypto.g;

public abstract class a
{
  public static void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 24));
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 16));
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */