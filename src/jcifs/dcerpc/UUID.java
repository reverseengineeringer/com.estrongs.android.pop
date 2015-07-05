package jcifs.dcerpc;

public class UUID
  extends rpc.uuid_t
{
  static final char[] HEXCHARS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public UUID(String paramString)
  {
    paramString = paramString.toCharArray();
    time_low = hex_to_bin(paramString, 0, 8);
    time_mid = S(hex_to_bin(paramString, 9, 4));
    time_hi_and_version = S(hex_to_bin(paramString, 14, 4));
    clock_seq_hi_and_reserved = B(hex_to_bin(paramString, 19, 2));
    clock_seq_low = B(hex_to_bin(paramString, 21, 2));
    node = new byte[6];
    node[0] = B(hex_to_bin(paramString, 24, 2));
    node[1] = B(hex_to_bin(paramString, 26, 2));
    node[2] = B(hex_to_bin(paramString, 28, 2));
    node[3] = B(hex_to_bin(paramString, 30, 2));
    node[4] = B(hex_to_bin(paramString, 32, 2));
    node[5] = B(hex_to_bin(paramString, 34, 2));
  }
  
  public UUID(rpc.uuid_t paramuuid_t)
  {
    time_low = time_low;
    time_mid = time_mid;
    time_hi_and_version = time_hi_and_version;
    clock_seq_hi_and_reserved = clock_seq_hi_and_reserved;
    clock_seq_low = clock_seq_low;
    node = new byte[6];
    node[0] = node[0];
    node[1] = node[1];
    node[2] = node[2];
    node[3] = node[3];
    node[4] = node[4];
    node[5] = node[5];
  }
  
  private static byte B(int paramInt)
  {
    return (byte)(paramInt & 0xFF);
  }
  
  private static short S(int paramInt)
  {
    return (short)(0xFFFF & paramInt);
  }
  
  public static String bin_to_hex(int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    int i = arrayOfChar.length;
    paramInt2 = paramInt1;
    for (paramInt1 = i;; paramInt1 = i)
    {
      i = paramInt1 - 1;
      if (paramInt1 <= 0) {
        break;
      }
      arrayOfChar[i] = HEXCHARS[(paramInt2 & 0xF)];
      paramInt2 >>>= 4;
    }
    return new String(arrayOfChar);
  }
  
  public static int hex_to_bin(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int k = 0;
    int j = paramInt1;
    int i = 0;
    if ((j < paramArrayOfChar.length) && (k < paramInt2))
    {
      i <<= 4;
      switch (paramArrayOfChar[j])
      {
      default: 
        throw new IllegalArgumentException(new String(paramArrayOfChar, paramInt1, paramInt2));
      case '0': 
      case '1': 
      case '2': 
      case '3': 
      case '4': 
      case '5': 
      case '6': 
      case '7': 
      case '8': 
      case '9': 
        i += paramArrayOfChar[j] - '0';
      }
      for (;;)
      {
        k += 1;
        j += 1;
        break;
        i += paramArrayOfChar[j] - 'A' + 10;
        continue;
        i += paramArrayOfChar[j] - 'a' + 10;
      }
    }
    return i;
  }
  
  public String toString()
  {
    return bin_to_hex(time_low, 8) + '-' + bin_to_hex(time_mid, 4) + '-' + bin_to_hex(time_hi_and_version, 4) + '-' + bin_to_hex(clock_seq_hi_and_reserved, 2) + bin_to_hex(clock_seq_low, 2) + '-' + bin_to_hex(node[0], 2) + bin_to_hex(node[1], 2) + bin_to_hex(node[2], 2) + bin_to_hex(node[3], 2) + bin_to_hex(node[4], 2) + bin_to_hex(node[5], 2);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.UUID
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */