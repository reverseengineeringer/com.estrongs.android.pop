package jcifs.util;

import java.io.PrintStream;

public class DES
{
  private static int[] SP1 = { 16843776, 0, 65536, 16843780, 16842756, 66564, 4, 65536, 1024, 16843776, 16843780, 1024, 16778244, 16842756, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, 16842752, 16842752, 16778244, 65540, 16777220, 16777220, 65540, 0, 1028, 66564, 16777216, 65536, 16843780, 4, 16842752, 16843776, 16777216, 16777216, 1024, 16842756, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, 16843780, 65540, 16842752, 16778244, 16777220, 1028, 66564, 16843776, 1028, 16778240, 16778240, 0, 65540, 66560, 0, 16842756 };
  private static int[] SP2 = { -2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, Integer.MIN_VALUE, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, Integer.MIN_VALUE, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, Integer.MIN_VALUE, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, Integer.MIN_VALUE, -2146435040, -2146402272, 1081344 };
  private static int[] SP3 = { 520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584 };
  private static int[] SP4 = { 8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, 129, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, 129, 8388736, 8388609, 8396800, 8396929, 129, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, 129, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928 };
  private static int[] SP5 = { 256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080 };
  private static int[] SP6 = { 536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312 };
  private static int[] SP7 = { 2097152, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154 };
  private static int[] SP8 = { 268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, 268435456, 268701696 };
  private static int[] bigbyte;
  private static byte[] bytebit = { -128, 64, 32, 16, 8, 4, 2, 1 };
  private static byte[] pc1;
  private static byte[] pc2;
  private static int[] totrot;
  private int[] decryptKeys = new int[32];
  private int[] encryptKeys = new int[32];
  private int[] tempInts = new int[2];
  
  static
  {
    bigbyte = new int[] { 8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1 };
    pc1 = new byte[] { 56, 48, 40, 32, 24, 16, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 60, 52, 44, 36, 28, 20, 12, 4, 27, 19, 11, 3 };
    totrot = new int[] { 1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28 };
    pc2 = new byte[] { 13, 16, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31 };
  }
  
  public DES() {}
  
  public DES(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 7)
    {
      byte[] arrayOfByte = new byte[8];
      makeSMBKey(paramArrayOfByte, arrayOfByte);
      setKey(arrayOfByte);
      return;
    }
    setKey(paramArrayOfByte);
  }
  
  private void cookey(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < 16)
    {
      int n = k + 1;
      int m = paramArrayOfInt1[k];
      k = n + 1;
      n = paramArrayOfInt1[n];
      paramArrayOfInt2[j] = ((m & 0xFC0000) << 6);
      paramArrayOfInt2[j] |= (m & 0xFC0) << 10;
      paramArrayOfInt2[j] |= (n & 0xFC0000) >>> 10;
      paramArrayOfInt2[j] |= (n & 0xFC0) >>> 6;
      j += 1;
      paramArrayOfInt2[j] = ((m & 0x3F000) << 12);
      paramArrayOfInt2[j] = ((m & 0x3F) << 16 | paramArrayOfInt2[j]);
      paramArrayOfInt2[j] |= (n & 0x3F000) >>> 4;
      paramArrayOfInt2[j] = (n & 0x3F | paramArrayOfInt2[j]);
      j += 1;
      i += 1;
    }
  }
  
  private void decrypt(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    squashBytesToInts(paramArrayOfByte1, paramInt1, tempInts, 0, 2);
    des(tempInts, tempInts, decryptKeys);
    spreadIntsToBytes(tempInts, 0, paramArrayOfByte2, paramInt2, 2);
  }
  
  private void des(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int m = 0;
    int j = paramArrayOfInt1[0];
    int i = paramArrayOfInt1[1];
    int k = (j >>> 4 ^ i) & 0xF0F0F0F;
    i ^= k;
    j ^= k << 4;
    k = (j >>> 16 ^ i) & 0xFFFF;
    i ^= k;
    j ^= k << 16;
    k = (i >>> 2 ^ j) & 0x33333333;
    j ^= k;
    k = i ^ k << 2;
    int n = (k >>> 8 ^ j) & 0xFF00FF;
    i = j ^ n;
    j = k ^ n << 8;
    j = j >>> 31 & 0x1 | j << 1;
    k = (i ^ j) & 0xAAAAAAAA;
    n = i ^ k;
    i = k ^ j;
    k = n << 1 | n >>> 31 & 0x1;
    j = 0;
    while (j < 8)
    {
      n = m + 1;
      m = paramArrayOfInt3[m] ^ (i << 28 | i >>> 4);
      int i1 = SP7[(m & 0x3F)];
      int i2 = SP5[(m >>> 8 & 0x3F)];
      int i3 = SP3[(m >>> 16 & 0x3F)];
      int i4 = SP1[(m >>> 24 & 0x3F)];
      m = n + 1;
      n = paramArrayOfInt3[n] ^ i;
      k ^= (i4 | i1 | i2 | i3 | SP8[(n & 0x3F)] | SP6[(n >>> 8 & 0x3F)] | SP4[(n >>> 16 & 0x3F)] | SP2[(n >>> 24 & 0x3F)]);
      n = m + 1;
      m = (k << 28 | k >>> 4) ^ paramArrayOfInt3[m];
      i1 = SP7[(m & 0x3F)];
      i2 = SP5[(m >>> 8 & 0x3F)];
      i3 = SP3[(m >>> 16 & 0x3F)];
      i4 = SP1[(m >>> 24 & 0x3F)];
      m = n + 1;
      n = paramArrayOfInt3[n] ^ k;
      i ^= (i1 | i2 | i3 | i4 | SP8[(n & 0x3F)] | SP6[(n >>> 8 & 0x3F)] | SP4[(n >>> 16 & 0x3F)] | SP2[(n >>> 24 & 0x3F)]);
      j += 1;
    }
    i = i << 31 | i >>> 1;
    j = (k ^ i) & 0xAAAAAAAA;
    k ^= j;
    i ^= j;
    j = k << 31 | k >>> 1;
    k = (j >>> 8 ^ i) & 0xFF00FF;
    i ^= k;
    j ^= k << 8;
    k = (j >>> 2 ^ i) & 0x33333333;
    i ^= k;
    j ^= k << 2;
    k = (i >>> 16 ^ j) & 0xFFFF;
    j ^= k;
    i ^= k << 16;
    k = (i >>> 4 ^ j) & 0xF0F0F0F;
    paramArrayOfInt2[0] = (i ^ k << 4);
    paramArrayOfInt2[1] = (j ^ k);
  }
  
  private void deskey(byte[] paramArrayOfByte, boolean paramBoolean, int[] paramArrayOfInt)
  {
    int[] arrayOfInt1 = new int[56];
    int[] arrayOfInt2 = new int[56];
    int[] arrayOfInt3 = new int[32];
    int i = 0;
    int j;
    if (i < 56)
    {
      j = pc1[i];
      if ((paramArrayOfByte[(j >>> 3)] & bytebit[(j & 0x7)]) != 0) {}
      for (j = 1;; j = 0)
      {
        arrayOfInt1[i] = j;
        i += 1;
        break;
      }
    }
    i = 0;
    while (i < 16)
    {
      int m;
      label121:
      int n;
      if (paramBoolean)
      {
        j = i << 1;
        m = j + 1;
        arrayOfInt3[m] = 0;
        arrayOfInt3[j] = 0;
        k = 0;
        if (k >= 28) {
          break label193;
        }
        n = totrot[i] + k;
        if (n >= 28) {
          break label177;
        }
        arrayOfInt2[k] = arrayOfInt1[n];
      }
      for (;;)
      {
        k += 1;
        break label121;
        j = 15 - i << 1;
        break;
        label177:
        arrayOfInt2[k] = arrayOfInt1[(n - 28)];
      }
      label193:
      int k = 28;
      if (k < 56)
      {
        n = totrot[i] + k;
        if (n < 56) {
          arrayOfInt2[k] = arrayOfInt1[n];
        }
        for (;;)
        {
          k += 1;
          break;
          arrayOfInt2[k] = arrayOfInt1[(n - 28)];
        }
      }
      k = 0;
      while (k < 24)
      {
        if (arrayOfInt2[pc2[k]] != 0) {
          arrayOfInt3[j] |= bigbyte[k];
        }
        if (arrayOfInt2[pc2[(k + 24)]] != 0) {
          arrayOfInt3[m] |= bigbyte[k];
        }
        k += 1;
      }
      i += 1;
    }
    cookey(arrayOfInt3, paramArrayOfInt);
  }
  
  private void encrypt(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    squashBytesToInts(paramArrayOfByte1, paramInt1, tempInts, 0, 2);
    des(tempInts, tempInts, encryptKeys);
    spreadIntsToBytes(tempInts, 0, paramArrayOfByte2, paramInt2, 2);
  }
  
  public static void makeSMBKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    paramArrayOfByte2[0] = ((byte)(paramArrayOfByte1[0] >> 1 & 0xFF));
    paramArrayOfByte2[1] = ((byte)(((paramArrayOfByte1[0] & 0x1) << 6 | (paramArrayOfByte1[1] & 0xFF) >> 2 & 0xFF) & 0xFF));
    paramArrayOfByte2[2] = ((byte)(((paramArrayOfByte1[1] & 0x3) << 5 | (paramArrayOfByte1[2] & 0xFF) >> 3 & 0xFF) & 0xFF));
    paramArrayOfByte2[3] = ((byte)(((paramArrayOfByte1[2] & 0x7) << 4 | (paramArrayOfByte1[3] & 0xFF) >> 4 & 0xFF) & 0xFF));
    paramArrayOfByte2[4] = ((byte)(((paramArrayOfByte1[3] & 0xF) << 3 | (paramArrayOfByte1[4] & 0xFF) >> 5 & 0xFF) & 0xFF));
    paramArrayOfByte2[5] = ((byte)(((paramArrayOfByte1[4] & 0x1F) << 2 | (paramArrayOfByte1[5] & 0xFF) >> 6 & 0xFF) & 0xFF));
    paramArrayOfByte2[6] = ((byte)(((paramArrayOfByte1[5] & 0x3F) << 1 | (paramArrayOfByte1[6] & 0xFF) >> 7 & 0xFF) & 0xFF));
    paramArrayOfByte2[7] = ((byte)(paramArrayOfByte1[6] & 0x7F));
    while (i < 8)
    {
      paramArrayOfByte2[i] = ((byte)(paramArrayOfByte2[i] << 1));
      i += 1;
    }
  }
  
  public static void spreadIntsToBytes(int[] paramArrayOfInt, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i = 0;
    while (i < paramInt3)
    {
      paramArrayOfByte[(i * 4 + paramInt2)] = ((byte)(paramArrayOfInt[(paramInt1 + i)] >>> 24));
      paramArrayOfByte[(i * 4 + paramInt2 + 1)] = ((byte)(paramArrayOfInt[(paramInt1 + i)] >>> 16));
      paramArrayOfByte[(i * 4 + paramInt2 + 2)] = ((byte)(paramArrayOfInt[(paramInt1 + i)] >>> 8));
      paramArrayOfByte[(i * 4 + paramInt2 + 3)] = ((byte)paramArrayOfInt[(paramInt1 + i)]);
      i += 1;
    }
  }
  
  public static void squashBytesToInts(byte[] paramArrayOfByte, int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3)
  {
    int i = 0;
    while (i < paramInt3)
    {
      paramArrayOfInt[(paramInt2 + i)] = ((paramArrayOfByte[(i * 4 + paramInt1)] & 0xFF) << 24 | (paramArrayOfByte[(i * 4 + paramInt1 + 1)] & 0xFF) << 16 | (paramArrayOfByte[(i * 4 + paramInt1 + 2)] & 0xFF) << 8 | paramArrayOfByte[(i * 4 + paramInt1 + 3)] & 0xFF);
      i += 1;
    }
  }
  
  public void decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    decrypt(paramArrayOfByte1, 0, paramArrayOfByte2, 0);
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    Object localObject;
    if (i % 8 != 0)
    {
      System.out.println("Array must be a multiple of 8");
      localObject = null;
      return (byte[])localObject;
    }
    byte[] arrayOfByte = new byte[i];
    int j = i / 8;
    i = 0;
    for (;;)
    {
      localObject = arrayOfByte;
      if (i >= j) {
        break;
      }
      encrypt(paramArrayOfByte, i * 8, arrayOfByte, i * 8);
      i += 1;
    }
  }
  
  public void encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    encrypt(paramArrayOfByte1, 0, paramArrayOfByte2, 0);
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    Object localObject;
    if (i % 8 != 0)
    {
      System.out.println("Array must be a multiple of 8");
      localObject = null;
      return (byte[])localObject;
    }
    byte[] arrayOfByte = new byte[i];
    int j = i / 8;
    i = 0;
    for (;;)
    {
      localObject = arrayOfByte;
      if (i >= j) {
        break;
      }
      encrypt(paramArrayOfByte, i * 8, arrayOfByte, i * 8);
      i += 1;
    }
  }
  
  public void setKey(byte[] paramArrayOfByte)
  {
    deskey(paramArrayOfByte, true, encryptKeys);
    deskey(paramArrayOfByte, false, decryptKeys);
  }
}

/* Location:
 * Qualified Name:     jcifs.util.DES
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */