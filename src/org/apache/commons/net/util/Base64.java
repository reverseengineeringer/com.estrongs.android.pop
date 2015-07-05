package org.apache.commons.net.util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;

public class Base64
{
  static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  static final int CHUNK_SIZE = 76;
  private static final byte[] DECODE_TABLE;
  private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;
  private static final int DEFAULT_BUFFER_SIZE = 8192;
  private static final int MASK_6BITS = 63;
  private static final int MASK_8BITS = 255;
  private static final byte PAD = 61;
  private static final byte[] STANDARD_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] URL_SAFE_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  private byte[] buffer;
  private int currentLinePos;
  private final int decodeSize;
  private final int encodeSize;
  private final byte[] encodeTable;
  private boolean eof;
  private final int lineLength;
  private final byte[] lineSeparator;
  private int modulus;
  private int pos;
  private int readPos;
  private int x;
  
  static
  {
    byte[] arrayOfByte = new byte[123];
    arrayOfByte[0] = -1;
    arrayOfByte[1] = -1;
    arrayOfByte[2] = -1;
    arrayOfByte[3] = -1;
    arrayOfByte[4] = -1;
    arrayOfByte[5] = -1;
    arrayOfByte[6] = -1;
    arrayOfByte[7] = -1;
    arrayOfByte[8] = -1;
    arrayOfByte[9] = -1;
    arrayOfByte[10] = -1;
    arrayOfByte[11] = -1;
    arrayOfByte[12] = -1;
    arrayOfByte[13] = -1;
    arrayOfByte[14] = -1;
    arrayOfByte[15] = -1;
    arrayOfByte[16] = -1;
    arrayOfByte[17] = -1;
    arrayOfByte[18] = -1;
    arrayOfByte[19] = -1;
    arrayOfByte[20] = -1;
    arrayOfByte[21] = -1;
    arrayOfByte[22] = -1;
    arrayOfByte[23] = -1;
    arrayOfByte[24] = -1;
    arrayOfByte[25] = -1;
    arrayOfByte[26] = -1;
    arrayOfByte[27] = -1;
    arrayOfByte[28] = -1;
    arrayOfByte[29] = -1;
    arrayOfByte[30] = -1;
    arrayOfByte[31] = -1;
    arrayOfByte[32] = -1;
    arrayOfByte[33] = -1;
    arrayOfByte[34] = -1;
    arrayOfByte[35] = -1;
    arrayOfByte[36] = -1;
    arrayOfByte[37] = -1;
    arrayOfByte[38] = -1;
    arrayOfByte[39] = -1;
    arrayOfByte[40] = -1;
    arrayOfByte[41] = -1;
    arrayOfByte[42] = -1;
    arrayOfByte[43] = 62;
    arrayOfByte[44] = -1;
    arrayOfByte[45] = 62;
    arrayOfByte[46] = -1;
    arrayOfByte[47] = 63;
    arrayOfByte[48] = 52;
    arrayOfByte[49] = 53;
    arrayOfByte[50] = 54;
    arrayOfByte[51] = 55;
    arrayOfByte[52] = 56;
    arrayOfByte[53] = 57;
    arrayOfByte[54] = 58;
    arrayOfByte[55] = 59;
    arrayOfByte[56] = 60;
    arrayOfByte[57] = 61;
    arrayOfByte[58] = -1;
    arrayOfByte[59] = -1;
    arrayOfByte[60] = -1;
    arrayOfByte[61] = -1;
    arrayOfByte[62] = -1;
    arrayOfByte[63] = -1;
    arrayOfByte[64] = -1;
    arrayOfByte[66] = 1;
    arrayOfByte[67] = 2;
    arrayOfByte[68] = 3;
    arrayOfByte[69] = 4;
    arrayOfByte[70] = 5;
    arrayOfByte[71] = 6;
    arrayOfByte[72] = 7;
    arrayOfByte[73] = 8;
    arrayOfByte[74] = 9;
    arrayOfByte[75] = 10;
    arrayOfByte[76] = 11;
    arrayOfByte[77] = 12;
    arrayOfByte[78] = 13;
    arrayOfByte[79] = 14;
    arrayOfByte[80] = 15;
    arrayOfByte[81] = 16;
    arrayOfByte[82] = 17;
    arrayOfByte[83] = 18;
    arrayOfByte[84] = 19;
    arrayOfByte[85] = 20;
    arrayOfByte[86] = 21;
    arrayOfByte[87] = 22;
    arrayOfByte[88] = 23;
    arrayOfByte[89] = 24;
    arrayOfByte[90] = 25;
    arrayOfByte[91] = -1;
    arrayOfByte[92] = -1;
    arrayOfByte[93] = -1;
    arrayOfByte[94] = -1;
    arrayOfByte[95] = 63;
    arrayOfByte[96] = -1;
    arrayOfByte[97] = 26;
    arrayOfByte[98] = 27;
    arrayOfByte[99] = 28;
    arrayOfByte[100] = 29;
    arrayOfByte[101] = 30;
    arrayOfByte[102] = 31;
    arrayOfByte[103] = 32;
    arrayOfByte[104] = 33;
    arrayOfByte[105] = 34;
    arrayOfByte[106] = 35;
    arrayOfByte[107] = 36;
    arrayOfByte[108] = 37;
    arrayOfByte[109] = 38;
    arrayOfByte[110] = 39;
    arrayOfByte[111] = 40;
    arrayOfByte[112] = 41;
    arrayOfByte[113] = 42;
    arrayOfByte[114] = 43;
    arrayOfByte[115] = 44;
    arrayOfByte[116] = 45;
    arrayOfByte[117] = 46;
    arrayOfByte[118] = 47;
    arrayOfByte[119] = 48;
    arrayOfByte[120] = 49;
    arrayOfByte[121] = 50;
    arrayOfByte[122] = 51;
    DECODE_TABLE = arrayOfByte;
  }
  
  public Base64()
  {
    this(false);
  }
  
  public Base64(int paramInt)
  {
    this(paramInt, CHUNK_SEPARATOR);
  }
  
  public Base64(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }
  
  public Base64(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte == null)
    {
      arrayOfByte = CHUNK_SEPARATOR;
      paramInt = 0;
    }
    int i;
    if (paramInt > 0)
    {
      i = paramInt / 4 * 4;
      lineLength = i;
      lineSeparator = new byte[arrayOfByte.length];
      System.arraycopy(arrayOfByte, 0, lineSeparator, 0, arrayOfByte.length);
      if (paramInt <= 0) {
        break label130;
      }
    }
    label130:
    for (encodeSize = (arrayOfByte.length + 4);; encodeSize = 4)
    {
      decodeSize = (encodeSize - 1);
      if (!containsBase64Byte(arrayOfByte)) {
        break label138;
      }
      paramArrayOfByte = newStringUtf8(arrayOfByte);
      throw new IllegalArgumentException("lineSeperator must not contain base64 characters: [" + paramArrayOfByte + "]");
      i = 0;
      break;
    }
    label138:
    if (paramBoolean) {}
    for (paramArrayOfByte = URL_SAFE_ENCODE_TABLE;; paramArrayOfByte = STANDARD_ENCODE_TABLE)
    {
      encodeTable = paramArrayOfByte;
      return;
    }
  }
  
  public Base64(boolean paramBoolean)
  {
    this(76, CHUNK_SEPARATOR, paramBoolean);
  }
  
  private static boolean containsBase64Byte(byte[] paramArrayOfByte)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return false;
      }
      if (isBase64(paramArrayOfByte[i])) {
        return true;
      }
      i += 1;
    }
  }
  
  public static byte[] decodeBase64(String paramString)
  {
    return new Base64().decode(paramString);
  }
  
  public static byte[] decodeBase64(byte[] paramArrayOfByte)
  {
    return new Base64().decode(paramArrayOfByte);
  }
  
  public static BigInteger decodeInteger(byte[] paramArrayOfByte)
  {
    return new BigInteger(1, decodeBase64(paramArrayOfByte));
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, false);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return encodeBase64(paramArrayOfByte, paramBoolean, false);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    return encodeBase64(paramArrayOfByte, paramBoolean1, paramBoolean2, Integer.MAX_VALUE);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    long l = getEncodeLength(paramArrayOfByte, 76, CHUNK_SEPARATOR);
    if (l > paramInt) {
      throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l + ") than the specified maxium size of " + paramInt);
    }
    if (paramBoolean1) {}
    for (Base64 localBase64 = new Base64(paramBoolean2);; localBase64 = new Base64(0, CHUNK_SEPARATOR, paramBoolean2)) {
      return localBase64.encode(paramArrayOfByte);
    }
  }
  
  public static byte[] encodeBase64Chunked(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, true);
  }
  
  public static String encodeBase64String(byte[] paramArrayOfByte)
  {
    return newStringUtf8(encodeBase64(paramArrayOfByte, true));
  }
  
  public static byte[] encodeBase64URLSafe(byte[] paramArrayOfByte)
  {
    return encodeBase64(paramArrayOfByte, false, true);
  }
  
  public static String encodeBase64URLSafeString(byte[] paramArrayOfByte)
  {
    return newStringUtf8(encodeBase64(paramArrayOfByte, false, true));
  }
  
  public static byte[] encodeInteger(BigInteger paramBigInteger)
  {
    if (paramBigInteger == null) {
      throw new NullPointerException("encodeInteger called with null parameter");
    }
    return encodeBase64(toIntegerBytes(paramBigInteger), false);
  }
  
  private byte[] getBytesUtf8(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static long getEncodeLength(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    int i = paramInt / 4 * 4;
    long l2 = paramArrayOfByte1.length * 4 / 3;
    long l3 = l2 % 4L;
    long l1 = l2;
    if (l3 != 0L) {
      l1 = l2 + (4L - l3);
    }
    l2 = l1;
    if (i > 0)
    {
      if (l1 % i == 0L) {}
      for (paramInt = 1;; paramInt = 0)
      {
        l1 += l1 / i * paramArrayOfByte2.length;
        l2 = l1;
        if (paramInt != 0) {
          break;
        }
        return paramArrayOfByte2.length + l1;
      }
    }
    return l2;
  }
  
  public static boolean isArrayByteBase64(byte[] paramArrayOfByte)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1;
      if (i >= paramArrayOfByte.length) {
        bool1 = true;
      }
      do
      {
        return bool1;
        if (isBase64(paramArrayOfByte[i])) {
          break;
        }
        bool1 = bool2;
      } while (!isWhiteSpace(paramArrayOfByte[i]));
      i += 1;
    }
  }
  
  public static boolean isBase64(byte paramByte)
  {
    return (paramByte == 61) || ((paramByte >= 0) && (paramByte < DECODE_TABLE.length) && (DECODE_TABLE[paramByte] != -1));
  }
  
  private static boolean isWhiteSpace(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private static String newStringUtf8(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "UTF8");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new RuntimeException(paramArrayOfByte);
    }
  }
  
  private void reset()
  {
    buffer = null;
    pos = 0;
    readPos = 0;
    currentLinePos = 0;
    modulus = 0;
    eof = false;
  }
  
  private void resizeBuffer()
  {
    if (buffer == null)
    {
      buffer = new byte[' '];
      pos = 0;
      readPos = 0;
      return;
    }
    byte[] arrayOfByte = new byte[buffer.length * 2];
    System.arraycopy(buffer, 0, arrayOfByte, 0, buffer.length);
    buffer = arrayOfByte;
  }
  
  static byte[] toIntegerBytes(BigInteger paramBigInteger)
  {
    int m = paramBigInteger.bitLength() + 7 >> 3 << 3;
    byte[] arrayOfByte = paramBigInteger.toByteArray();
    if ((paramBigInteger.bitLength() % 8 != 0) && (paramBigInteger.bitLength() / 8 + 1 == m / 8)) {
      return arrayOfByte;
    }
    int j = 0;
    int k = arrayOfByte.length;
    int i = k;
    if (paramBigInteger.bitLength() % 8 == 0)
    {
      j = 1;
      i = k - 1;
    }
    k = m / 8;
    paramBigInteger = new byte[m / 8];
    System.arraycopy(arrayOfByte, j, paramBigInteger, k - i, i);
    return paramBigInteger;
  }
  
  int avail()
  {
    if (buffer != null) {
      return pos - readPos;
    }
    return 0;
  }
  
  public Object decode(Object paramObject)
  {
    if ((paramObject instanceof byte[])) {
      return decode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return decode((String)paramObject);
    }
    throw new RuntimeException("Parameter supplied to Base64 decode is not a byte[] or a String");
  }
  
  void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (eof) {
      return;
    }
    if (paramInt2 < 0) {
      eof = true;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramInt2) {}
      int j;
      while ((eof) && (modulus != 0))
      {
        x <<= 6;
        switch (modulus)
        {
        default: 
          return;
        case 2: 
          x <<= 6;
          paramArrayOfByte = buffer;
          paramInt1 = pos;
          pos = (paramInt1 + 1);
          paramArrayOfByte[paramInt1] = ((byte)(x >> 16 & 0xFF));
          return;
          if ((buffer == null) || (buffer.length - pos < decodeSize)) {
            resizeBuffer();
          }
          j = paramArrayOfByte[paramInt1];
          if (j != 61) {
            break label169;
          }
          eof = true;
        }
      }
      label169:
      if ((j >= 0) && (j < DECODE_TABLE.length))
      {
        j = DECODE_TABLE[j];
        if (j >= 0)
        {
          int k = modulus + 1;
          modulus = k;
          modulus = (k % 4);
          x = (j + (x << 6));
          if (modulus == 0)
          {
            byte[] arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = ((byte)(x >> 16 & 0xFF));
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = ((byte)(x >> 8 & 0xFF));
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = ((byte)(x & 0xFF));
          }
        }
      }
      i += 1;
      paramInt1 += 1;
    }
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(x >> 16 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(x >> 8 & 0xFF));
  }
  
  public byte[] decode(String paramString)
  {
    return decode(getBytesUtf8(paramString));
  }
  
  public byte[] decode(byte[] paramArrayOfByte)
  {
    reset();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    byte[] arrayOfByte = new byte[(int)(paramArrayOfByte.length * 3 / 4)];
    setInitialBuffer(arrayOfByte, 0, arrayOfByte.length);
    decode(paramArrayOfByte, 0, paramArrayOfByte.length);
    decode(paramArrayOfByte, 0, -1);
    paramArrayOfByte = new byte[pos];
    readResults(paramArrayOfByte, 0, paramArrayOfByte.length);
    return paramArrayOfByte;
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof byte[])) {
      throw new RuntimeException("Parameter supplied to Base64 encode is not a byte[]");
    }
    return encode((byte[])paramObject);
  }
  
  void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (eof) {}
    for (;;)
    {
      return;
      if (paramInt2 < 0)
      {
        eof = true;
        if ((buffer == null) || (buffer.length - pos < encodeSize)) {
          resizeBuffer();
        }
        switch (modulus)
        {
        }
        while ((lineLength > 0) && (pos > 0))
        {
          System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
          pos += lineSeparator.length;
          return;
          paramArrayOfByte = buffer;
          paramInt1 = pos;
          pos = (paramInt1 + 1);
          paramArrayOfByte[paramInt1] = encodeTable[(x >> 2 & 0x3F)];
          paramArrayOfByte = buffer;
          paramInt1 = pos;
          pos = (paramInt1 + 1);
          paramArrayOfByte[paramInt1] = encodeTable[(x << 4 & 0x3F)];
          if (encodeTable == STANDARD_ENCODE_TABLE)
          {
            paramArrayOfByte = buffer;
            paramInt1 = pos;
            pos = (paramInt1 + 1);
            paramArrayOfByte[paramInt1] = 61;
            paramArrayOfByte = buffer;
            paramInt1 = pos;
            pos = (paramInt1 + 1);
            paramArrayOfByte[paramInt1] = 61;
            continue;
            paramArrayOfByte = buffer;
            paramInt1 = pos;
            pos = (paramInt1 + 1);
            paramArrayOfByte[paramInt1] = encodeTable[(x >> 10 & 0x3F)];
            paramArrayOfByte = buffer;
            paramInt1 = pos;
            pos = (paramInt1 + 1);
            paramArrayOfByte[paramInt1] = encodeTable[(x >> 4 & 0x3F)];
            paramArrayOfByte = buffer;
            paramInt1 = pos;
            pos = (paramInt1 + 1);
            paramArrayOfByte[paramInt1] = encodeTable[(x << 2 & 0x3F)];
            if (encodeTable == STANDARD_ENCODE_TABLE)
            {
              paramArrayOfByte = buffer;
              paramInt1 = pos;
              pos = (paramInt1 + 1);
              paramArrayOfByte[paramInt1] = 61;
            }
          }
        }
      }
      else
      {
        int i = 0;
        while (i < paramInt2)
        {
          if ((buffer == null) || (buffer.length - pos < encodeSize)) {
            resizeBuffer();
          }
          int j = modulus + 1;
          modulus = j;
          modulus = (j % 3);
          int k = paramArrayOfByte[paramInt1];
          j = k;
          if (k < 0) {
            j = k + 256;
          }
          x = (j + (x << 8));
          if (modulus == 0)
          {
            byte[] arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[(x >> 18 & 0x3F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[(x >> 12 & 0x3F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[(x >> 6 & 0x3F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[(x & 0x3F)];
            currentLinePos += 4;
            if ((lineLength > 0) && (lineLength <= currentLinePos))
            {
              System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
              pos += lineSeparator.length;
              currentLinePos = 0;
            }
          }
          i += 1;
          paramInt1 += 1;
        }
      }
    }
  }
  
  public byte[] encode(byte[] paramArrayOfByte)
  {
    reset();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    byte[] arrayOfByte = new byte[(int)getEncodeLength(paramArrayOfByte, lineLength, lineSeparator)];
    setInitialBuffer(arrayOfByte, 0, arrayOfByte.length);
    encode(paramArrayOfByte, 0, paramArrayOfByte.length);
    encode(paramArrayOfByte, 0, -1);
    if (buffer != arrayOfByte) {
      readResults(arrayOfByte, 0, arrayOfByte.length);
    }
    if ((isUrlSafe()) && (pos < arrayOfByte.length))
    {
      paramArrayOfByte = new byte[pos];
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, pos);
      return paramArrayOfByte;
    }
    return arrayOfByte;
  }
  
  public String encodeToString(byte[] paramArrayOfByte)
  {
    return newStringUtf8(encode(paramArrayOfByte));
  }
  
  boolean hasData()
  {
    return buffer != null;
  }
  
  public boolean isUrlSafe()
  {
    return encodeTable == URL_SAFE_ENCODE_TABLE;
  }
  
  int readResults(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (buffer != null)
    {
      paramInt2 = Math.min(avail(), paramInt2);
      if (buffer != paramArrayOfByte)
      {
        System.arraycopy(buffer, readPos, paramArrayOfByte, paramInt1, paramInt2);
        readPos += paramInt2;
        if (readPos >= pos) {
          buffer = null;
        }
        return paramInt2;
      }
      buffer = null;
      return paramInt2;
    }
    if (eof) {
      return -1;
    }
    return 0;
  }
  
  void setInitialBuffer(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length == paramInt2))
    {
      buffer = paramArrayOfByte;
      pos = paramInt1;
      readPos = paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.Base64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */