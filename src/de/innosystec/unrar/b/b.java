package de.innosystec.unrar.b;

public class b
{
  public static final int a(byte[] paramArrayOfByte, int paramInt)
  {
    return (((0x0 | paramArrayOfByte[paramInt] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 3)] & 0xFF;
  }
  
  public static final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >>> 24 & 0xFF));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >>> 16 & 0xFF));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >>> 8 & 0xFF));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 & 0xFF));
  }
  
  public static final void a(byte[] paramArrayOfByte, int paramInt, short paramShort)
  {
    paramArrayOfByte[(paramInt + 1)] = ((byte)(paramShort >>> 8));
    paramArrayOfByte[paramInt] = ((byte)(paramShort & 0xFF));
  }
  
  public static final short b(byte[] paramArrayOfByte, int paramInt)
  {
    return (short)((short)((short)(0 + (paramArrayOfByte[(paramInt + 1)] & 0xFF)) << 8) + (paramArrayOfByte[paramInt] & 0xFF));
  }
  
  public static final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = (paramArrayOfByte[paramInt1] & 0xFF) + (paramInt2 & 0xFF) >>> 8;
    paramArrayOfByte[paramInt1] = ((byte)(paramArrayOfByte[paramInt1] + (paramInt2 & 0xFF)));
    if ((i > 0) || ((0xFF00 & paramInt2) != 0))
    {
      paramInt1 += 1;
      paramArrayOfByte[paramInt1] = ((byte)(i + (paramInt2 >>> 8 & 0xFF) + paramArrayOfByte[paramInt1]));
    }
  }
  
  public static final int c(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | paramArrayOfByte[paramInt] & 0xFF;
  }
  
  public static final void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 >>> 24));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >>> 16));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >>> 8));
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 & 0xFF));
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */