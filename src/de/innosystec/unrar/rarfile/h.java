package de.innosystec.unrar.rarfile;

public class h
{
  public static int a(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF;
  }
  
  public static String b(byte[] paramArrayOfByte, int paramInt)
  {
    int k = 0;
    int i2 = a(paramArrayOfByte, paramInt);
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    paramInt += 1;
    int j = 0;
    int m;
    if (paramInt < paramArrayOfByte.length)
    {
      if (k != 0) {
        break label343;
      }
      m = a(paramArrayOfByte, paramInt);
      paramInt += 1;
      k = 8;
    }
    for (;;)
    {
      switch (m >> 6)
      {
      }
      for (;;)
      {
        j = m << 2 & 0xFF;
        k -= 2;
        break;
        j = paramInt + 1;
        localStringBuffer.append((char)a(paramArrayOfByte, paramInt));
        i += 1;
        paramInt = j;
        continue;
        j = paramInt + 1;
        localStringBuffer.append((char)(a(paramArrayOfByte, paramInt) + (i2 << 8)));
        i += 1;
        paramInt = j;
        continue;
        localStringBuffer.append((char)(a(paramArrayOfByte, paramInt) + (a(paramArrayOfByte, paramInt + 1) << 8)));
        i += 1;
        paramInt += 2;
        continue;
        j = paramInt + 1;
        paramInt = a(paramArrayOfByte, paramInt);
        if ((paramInt & 0x80) != 0)
        {
          int i1 = j + 1;
          int i3 = a(paramArrayOfByte, j);
          int n = (paramInt & 0x7F) + 2;
          j = i;
          for (;;)
          {
            i = j;
            paramInt = i1;
            if (n <= 0) {
              break;
            }
            i = j;
            paramInt = i1;
            if (j >= paramArrayOfByte.length) {
              break;
            }
            localStringBuffer.append((char)((a(paramArrayOfByte, j) + i3 & 0xFF) + (i2 << 8)));
            n -= 1;
            j += 1;
          }
        }
        paramInt += 2;
        while ((paramInt > 0) && (i < paramArrayOfByte.length))
        {
          localStringBuffer.append((char)a(paramArrayOfByte, i));
          paramInt -= 1;
          i += 1;
          continue;
          return localStringBuffer.toString();
        }
        paramInt = j;
      }
      label343:
      m = j;
    }
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */