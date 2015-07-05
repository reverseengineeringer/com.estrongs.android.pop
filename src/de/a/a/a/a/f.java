package de.a.a.a.a;

public class f
{
  public static int a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length - 1;
    int j = 0;
    for (;;)
    {
      if (i <= 0) {
        return paramArrayOfByte[0] & 0xFF | j;
      }
      j = (j | paramArrayOfByte[i] & 0xFF) << 8;
      i -= 1;
    }
  }
  
  public static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool;
    int i;
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null) && (paramArrayOfByte1.length == paramArrayOfByte2.length))
    {
      bool = true;
      i = 0;
    }
    for (;;)
    {
      if ((!bool) || (i >= paramArrayOfByte1.length))
      {
        return bool;
        bool = false;
        break;
      }
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        bool = false;
      }
      i += 1;
    }
  }
  
  public static byte[] a(int paramInt)
  {
    return new byte[] { (byte)paramInt, (byte)(paramInt >> 8), (byte)(paramInt >> 16), (byte)(paramInt >> 24) };
  }
  
  public static byte[] a(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte1 = new byte[paramInt2];
    byte[] arrayOfByte2 = a(paramInt1);
    paramInt1 = 0;
    for (;;)
    {
      if ((paramInt1 >= arrayOfByte2.length) || (paramInt1 >= paramInt2)) {
        return arrayOfByte1;
      }
      arrayOfByte1[paramInt1] = arrayOfByte2[paramInt1];
      paramInt1 += 1;
    }
  }
  
  public static short b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length - 1;
    int j = 0;
    for (;;)
    {
      if (i <= 0) {
        return (short)(paramArrayOfByte[0] & 0xFF | j);
      }
      j = (short)((short)(j | paramArrayOfByte[i] & 0xFF) << 8);
      i -= 1;
    }
  }
  
  public static String c(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() < 2) {
        localStringBuffer.append('0');
      }
      localStringBuffer.append(str).append(' ');
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */