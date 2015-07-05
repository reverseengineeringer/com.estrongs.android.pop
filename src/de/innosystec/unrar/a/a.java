package de.innosystec.unrar.a;

public class a
{
  private static final int[] a = new int['Ā'];
  
  static
  {
    int i = 0;
    while (i < 256)
    {
      int k = 0;
      int j = i;
      if (k < 8)
      {
        if ((j & 0x1) != 0) {
          j = j >>> 1 ^ 0xEDB88320;
        }
        for (;;)
        {
          k += 1;
          break;
          j >>>= 1;
        }
      }
      a[i] = j;
      i += 1;
    }
  }
  
  public static int a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int j = Math.min(paramArrayOfByte.length - paramInt2, paramInt3);
    int i = 0;
    paramInt3 = paramInt1;
    paramInt1 = i;
    while (paramInt1 < j)
    {
      paramInt3 = a[((paramArrayOfByte[(paramInt2 + paramInt1)] ^ paramInt3) & 0xFF)] ^ paramInt3 >>> 8;
      paramInt1 += 1;
    }
    return paramInt3;
  }
  
  public static short a(short paramShort, byte[] paramArrayOfByte, int paramInt)
  {
    int i = Math.min(paramArrayOfByte.length, paramInt);
    paramInt = 0;
    while (paramInt < i)
    {
      int j = (short)((short)((short)(paramArrayOfByte[paramInt] & 0xFF) + paramShort) & 0xFFFFFFFF);
      paramShort = (short)((j >>> 15 | j << 1) & 0xFFFFFFFF);
      paramInt += 1;
    }
    return paramShort;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */