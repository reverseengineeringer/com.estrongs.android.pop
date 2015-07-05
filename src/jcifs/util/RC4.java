package jcifs.util;

public class RC4
{
  int i;
  int j;
  byte[] s;
  
  public RC4() {}
  
  public RC4(byte[] paramArrayOfByte)
  {
    init(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void init(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    s = new byte['Ā'];
    for (i = 0; i < 256; i += 1) {
      s[i] = ((byte)i);
    }
    j = 0;
    for (i = 0; i < 256; i += 1)
    {
      j = (j + paramArrayOfByte[(i % paramInt2 + paramInt1)] + s[i] & 0xFF);
      int k = s[i];
      s[i] = s[j];
      s[j] = k;
    }
    j = 0;
    i = 0;
  }
  
  public void update(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int m = paramInt3;
    paramInt3 = paramInt1;
    while (paramInt3 < paramInt1 + paramInt2)
    {
      i = (i + 1 & 0xFF);
      j = (j + s[i] & 0xFF);
      int k = s[i];
      s[i] = s[j];
      s[j] = k;
      paramArrayOfByte2[m] = ((byte)(paramArrayOfByte1[paramInt3] ^ s[(s[i] + s[j] & 0xFF)]));
      m += 1;
      paramInt3 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.util.RC4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */