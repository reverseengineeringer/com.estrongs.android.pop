package jcifs.util;

public class Base64
{
  private static final String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  
  public static byte[] decode(String paramString)
  {
    int k = 0;
    int m = paramString.length();
    Object localObject;
    if (m == 0) {
      localObject = new byte[0];
    }
    int i;
    int n;
    byte[] arrayOfByte;
    label56:
    do
    {
      return (byte[])localObject;
      if (paramString.charAt(m - 2) != '=') {
        break;
      }
      i = 2;
      n = m * 3 / 4 - i;
      arrayOfByte = new byte[n];
      j = 0;
      i = k;
      localObject = arrayOfByte;
    } while (j >= m);
    int i1 = j + 1;
    k = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(paramString.charAt(j));
    int j = i1 + 1;
    i1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(paramString.charAt(i1));
    int i2 = j + 1;
    int i3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(paramString.charAt(j));
    j = i2 + 1;
    i1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(paramString.charAt(i2)) & 0xFF | (k & 0xFF) << 18 | (i1 & 0xFF) << 12 | (i3 & 0xFF) << 6;
    k = i + 1;
    arrayOfByte[i] = ((byte)(i1 >>> 16));
    if (k < n)
    {
      i = k + 1;
      arrayOfByte[k] = ((byte)(i1 >>> 8 & 0xFF));
    }
    for (;;)
    {
      if (i < n)
      {
        arrayOfByte[i] = ((byte)(i1 & 0xFF));
        i += 1;
        break label56;
        if (paramString.charAt(m - 1) == '=')
        {
          i = 1;
          break;
        }
        i = 0;
        break;
      }
      break label56;
      i = k;
    }
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    if (j == 0) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer((int)Math.ceil(j / 3.0D) * 4);
    int k = j % 3;
    int i = 0;
    while (i < j - k)
    {
      int i1 = i + 1;
      int m = paramArrayOfByte[i];
      int n = i1 + 1;
      i1 = paramArrayOfByte[i1];
      i = n + 1;
      m = (i1 & 0xFF) << 8 | (m & 0xFF) << 16 | paramArrayOfByte[n] & 0xFF;
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 18));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 12 & 0x3F));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m >>> 6 & 0x3F));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(m & 0x3F));
    }
    if (k == 0) {
      return localStringBuffer.toString();
    }
    if (k == 1)
    {
      i = (paramArrayOfByte[i] & 0xFF) << 4;
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 6));
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i & 0x3F));
      localStringBuffer.append("==");
      return localStringBuffer.toString();
    }
    i = ((paramArrayOfByte[i] & 0xFF) << 8 | paramArrayOfByte[(i + 1)] & 0xFF) << 2;
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 12));
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i >>> 6 & 0x3F));
    localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i & 0x3F));
    localStringBuffer.append("=");
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     jcifs.util.Base64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */