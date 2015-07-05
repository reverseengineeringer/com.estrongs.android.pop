package jcifs.util;

import java.security.MessageDigest;

public class MD4
  extends MessageDigest
  implements Cloneable
{
  private static final int BLOCK_LENGTH = 64;
  private int[] X = new int[16];
  private byte[] buffer = new byte[64];
  private int[] context = new int[4];
  private long count;
  
  public MD4()
  {
    super("MD4");
    engineReset();
  }
  
  private MD4(MD4 paramMD4)
  {
    this();
    count = count;
  }
  
  private int FF(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    paramInt1 = (paramInt2 & paramInt3 | (paramInt2 ^ 0xFFFFFFFF) & paramInt4) + paramInt1 + paramInt5;
    return paramInt1 >>> 32 - paramInt6 | paramInt1 << paramInt6;
  }
  
  private int GG(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    paramInt1 = ((paramInt3 | paramInt4) & paramInt2 | paramInt3 & paramInt4) + paramInt1 + paramInt5 + 1518500249;
    return paramInt1 >>> 32 - paramInt6 | paramInt1 << paramInt6;
  }
  
  private int HH(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    paramInt1 = (paramInt2 ^ paramInt3 ^ paramInt4) + paramInt1 + paramInt5 + 1859775393;
    return paramInt1 >>> 32 - paramInt6 | paramInt1 << paramInt6;
  }
  
  private void transform(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < 16)
    {
      int[] arrayOfInt = X;
      k = i + 1;
      j = paramArrayOfByte[i];
      i = k + 1;
      k = paramArrayOfByte[k];
      int m = i + 1;
      int n = paramArrayOfByte[i];
      i = m + 1;
      arrayOfInt[paramInt] = ((k & 0xFF) << 8 | j & 0xFF | (n & 0xFF) << 16 | (paramArrayOfByte[m] & 0xFF) << 24);
      paramInt += 1;
    }
    i = context[0];
    paramInt = context[1];
    int k = context[2];
    j = context[3];
    i = FF(i, paramInt, k, j, X[0], 3);
    j = FF(j, i, paramInt, k, X[1], 7);
    k = FF(k, j, i, paramInt, X[2], 11);
    paramInt = FF(paramInt, k, j, i, X[3], 19);
    i = FF(i, paramInt, k, j, X[4], 3);
    j = FF(j, i, paramInt, k, X[5], 7);
    k = FF(k, j, i, paramInt, X[6], 11);
    paramInt = FF(paramInt, k, j, i, X[7], 19);
    i = FF(i, paramInt, k, j, X[8], 3);
    j = FF(j, i, paramInt, k, X[9], 7);
    k = FF(k, j, i, paramInt, X[10], 11);
    paramInt = FF(paramInt, k, j, i, X[11], 19);
    i = FF(i, paramInt, k, j, X[12], 3);
    j = FF(j, i, paramInt, k, X[13], 7);
    k = FF(k, j, i, paramInt, X[14], 11);
    paramInt = FF(paramInt, k, j, i, X[15], 19);
    i = GG(i, paramInt, k, j, X[0], 3);
    j = GG(j, i, paramInt, k, X[4], 5);
    k = GG(k, j, i, paramInt, X[8], 9);
    paramInt = GG(paramInt, k, j, i, X[12], 13);
    i = GG(i, paramInt, k, j, X[1], 3);
    j = GG(j, i, paramInt, k, X[5], 5);
    k = GG(k, j, i, paramInt, X[9], 9);
    paramInt = GG(paramInt, k, j, i, X[13], 13);
    i = GG(i, paramInt, k, j, X[2], 3);
    j = GG(j, i, paramInt, k, X[6], 5);
    k = GG(k, j, i, paramInt, X[10], 9);
    paramInt = GG(paramInt, k, j, i, X[14], 13);
    i = GG(i, paramInt, k, j, X[3], 3);
    j = GG(j, i, paramInt, k, X[7], 5);
    k = GG(k, j, i, paramInt, X[11], 9);
    paramInt = GG(paramInt, k, j, i, X[15], 13);
    i = HH(i, paramInt, k, j, X[0], 3);
    j = HH(j, i, paramInt, k, X[8], 9);
    k = HH(k, j, i, paramInt, X[4], 11);
    paramInt = HH(paramInt, k, j, i, X[12], 15);
    i = HH(i, paramInt, k, j, X[2], 3);
    j = HH(j, i, paramInt, k, X[10], 9);
    k = HH(k, j, i, paramInt, X[6], 11);
    paramInt = HH(paramInt, k, j, i, X[14], 15);
    i = HH(i, paramInt, k, j, X[1], 3);
    j = HH(j, i, paramInt, k, X[9], 9);
    k = HH(k, j, i, paramInt, X[5], 11);
    paramInt = HH(paramInt, k, j, i, X[13], 15);
    i = HH(i, paramInt, k, j, X[3], 3);
    j = HH(j, i, paramInt, k, X[11], 9);
    k = HH(k, j, i, paramInt, X[7], 11);
    paramInt = HH(paramInt, k, j, i, X[15], 15);
    paramArrayOfByte = context;
    paramArrayOfByte[0] += i;
    paramArrayOfByte = context;
    paramArrayOfByte[1] = (paramInt + paramArrayOfByte[1]);
    paramArrayOfByte = context;
    paramArrayOfByte[2] += k;
    paramArrayOfByte = context;
    paramArrayOfByte[3] += j;
  }
  
  public Object clone()
  {
    return new MD4(this);
  }
  
  public byte[] engineDigest()
  {
    int i = (int)(count % 64L);
    if (i < 56) {}
    int j;
    for (i = 56 - i;; i = 120 - i)
    {
      arrayOfByte = new byte[i + 8];
      arrayOfByte[0] = Byte.MIN_VALUE;
      j = 0;
      while (j < 8)
      {
        arrayOfByte[(i + j)] = ((byte)(int)(count * 8L >>> j * 8));
        j += 1;
      }
    }
    engineUpdate(arrayOfByte, 0, arrayOfByte.length);
    byte[] arrayOfByte = new byte[16];
    i = 0;
    while (i < 4)
    {
      j = 0;
      while (j < 4)
      {
        arrayOfByte[(i * 4 + j)] = ((byte)(context[i] >>> j * 8));
        j += 1;
      }
      i += 1;
    }
    engineReset();
    return arrayOfByte;
  }
  
  public void engineReset()
  {
    context[0] = 1732584193;
    context[1] = -271733879;
    context[2] = -1732584194;
    context[3] = 271733878;
    count = 0L;
    int i = 0;
    while (i < 64)
    {
      buffer[i] = 0;
      i += 1;
    }
  }
  
  public void engineUpdate(byte paramByte)
  {
    int i = (int)(count % 64L);
    count += 1L;
    buffer[i] = paramByte;
    if (i == 63) {
      transform(buffer, 0);
    }
  }
  
  public void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int m = 0;
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    int j = (int)(count % 64L);
    count += paramInt2;
    int i = 64 - j;
    if (paramInt2 >= i)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, buffer, j, i);
      transform(buffer, 0);
      for (;;)
      {
        k = i;
        j = m;
        if (i + 64 - 1 >= paramInt2) {
          break;
        }
        transform(paramArrayOfByte, paramInt1 + i);
        i += 64;
      }
    }
    int k = 0;
    if (k < paramInt2) {
      System.arraycopy(paramArrayOfByte, paramInt1 + k, buffer, j, paramInt2 - k);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.util.MD4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */