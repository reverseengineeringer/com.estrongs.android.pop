package com.gmail.yuyang226.flickr.d;

public final class a
{
  private static byte[] a;
  private static byte[] b;
  
  static
  {
    int k = 0;
    a = new byte['ÿ'];
    b = new byte[64];
    int i = 0;
    label29:
    label38:
    label47:
    label71:
    int j;
    if (i >= 255)
    {
      i = 90;
      if (i >= 65) {
        break label129;
      }
      i = 122;
      if (i >= 97) {
        break label146;
      }
      i = 57;
      if (i >= 48) {
        break label166;
      }
      a[43] = 62;
      a[47] = 63;
      i = 0;
      if (i <= 25) {
        break label186;
      }
      j = 26;
      i = 0;
      label82:
      if (j <= 51) {
        break label203;
      }
      j = 52;
      i = k;
    }
    for (;;)
    {
      if (j > 61)
      {
        b[62] = 43;
        b[63] = 47;
        return;
        a[i] = -1;
        i += 1;
        break;
        label129:
        a[i] = ((byte)(i - 65));
        i -= 1;
        break label29;
        label146:
        a[i] = ((byte)(i - 97 + 26));
        i -= 1;
        break label38;
        label166:
        a[i] = ((byte)(i - 48 + 52));
        i -= 1;
        break label47;
        label186:
        b[i] = ((byte)(i + 65));
        i += 1;
        break label71;
        label203:
        b[j] = ((byte)(i + 97));
        j += 1;
        i += 1;
        break label82;
      }
      b[j] = ((byte)(i + 48));
      j += 1;
      i += 1;
    }
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null) {}
    int i;
    int n;
    int i1;
    label58:
    int k;
    int j;
    for (;;)
    {
      return (byte[])localObject;
      try
      {
        i = paramArrayOfByte.length * 8;
        n = i % 24;
        i1 = i / 24;
        arrayOfByte = (byte[])null;
        if (n == 0) {
          break;
        }
        arrayOfByte = new byte[(i1 + 1) * 4];
      }
      finally {}
      arrayOfByte[k] = b[i];
      arrayOfByte[(k + 1)] = b[(j << 4)];
      arrayOfByte[(k + 2)] = 61;
      arrayOfByte[(k + 3)] = 61;
      localObject = arrayOfByte;
    }
    byte[] arrayOfByte = new byte[i1 * 4];
    break label266;
    label120:
    int i5;
    arrayOfByte[i5] = b[j];
    int i4;
    arrayOfByte[(i5 + 1)] = b[(k | i4 << 4)];
    int m;
    int i3;
    arrayOfByte[(i5 + 2)] = b[(m | i3 << 2)];
    int i2;
    arrayOfByte[(i5 + 3)] = b[(i2 & 0x3F)];
    i += 1;
    for (;;)
    {
      label188:
      arrayOfByte[k] = b[i];
      arrayOfByte[(k + 1)] = b[(j | n << 4)];
      arrayOfByte[(k + 2)] = b[(m << 2)];
      arrayOfByte[(k + 3)] = 61;
      localObject = arrayOfByte;
      break;
      label242:
      for (i = (byte)(i >> 2 ^ 0xC0); (j & 0xFFFFFF80) != 0; i = (byte)(i >> 2))
      {
        j = (byte)(j >> 4 ^ 0xF0);
        break label188;
        label266:
        i = 0;
        if (i >= i1)
        {
          j = i * 3;
          k = i * 4;
          if (n != 8) {
            break label450;
          }
          i = paramArrayOfByte[j];
          j = (byte)(i & 0x3);
          if ((i & 0xFFFFFF80) != 0) {
            break label438;
          }
          i = (byte)(i >> 2);
          break label58;
        }
        m = i * 3;
        j = paramArrayOfByte[m];
        k = paramArrayOfByte[(m + 1)];
        i2 = paramArrayOfByte[(m + 2)];
        i3 = (byte)(k & 0xF);
        i4 = (byte)(j & 0x3);
        i5 = i * 4;
        if ((j & 0xFFFFFF80) == 0)
        {
          j = (byte)(j >> 2);
          label368:
          if ((k & 0xFFFFFF80) != 0) {
            break label411;
          }
        }
        label411:
        for (k = (byte)(k >> 4);; k = (byte)(k >> 4 ^ 0xF0))
        {
          if ((i2 & 0xFFFFFF80) != 0) {
            break label423;
          }
          m = (byte)(i2 >> 6);
          break;
          j = (byte)(j >> 2 ^ 0xC0);
          break label368;
        }
        label423:
        m = (byte)(i2 >> 6 ^ 0xFC);
        break label120;
        label438:
        i = (byte)(i >> 2 ^ 0xC0);
        break label58;
        label450:
        localObject = arrayOfByte;
        if (n != 16) {
          break;
        }
        i = paramArrayOfByte[j];
        j = paramArrayOfByte[(j + 1)];
        m = (byte)(j & 0xF);
        n = (byte)(i & 0x3);
        if ((i & 0xFFFFFF80) != 0) {
          break label242;
        }
      }
      j = (byte)(j >> 4);
    }
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */