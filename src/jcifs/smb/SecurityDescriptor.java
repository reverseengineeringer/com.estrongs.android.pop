package jcifs.smb;

import java.io.IOException;

public class SecurityDescriptor
{
  public ACE[] aces;
  public int type;
  
  public SecurityDescriptor() {}
  
  public SecurityDescriptor(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    decode(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public int decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = paramInt1 + 1 + 1;
    type = ServerMessageBlock.readInt2(paramArrayOfByte, paramInt2);
    paramInt2 += 2;
    ServerMessageBlock.readInt4(paramArrayOfByte, paramInt2);
    paramInt2 += 4;
    ServerMessageBlock.readInt4(paramArrayOfByte, paramInt2);
    paramInt2 += 4;
    ServerMessageBlock.readInt4(paramArrayOfByte, paramInt2);
    int i = ServerMessageBlock.readInt4(paramArrayOfByte, paramInt2 + 4);
    paramInt2 = paramInt1 + i + 1 + 1;
    ServerMessageBlock.readInt2(paramArrayOfByte, paramInt2);
    paramInt2 += 2;
    int k = ServerMessageBlock.readInt4(paramArrayOfByte, paramInt2);
    paramInt2 += 4;
    if (k > 4096) {
      throw new IOException("Invalid SecurityDescriptor");
    }
    if (i != 0)
    {
      aces = new ACE[k];
      i = 0;
      for (;;)
      {
        j = paramInt2;
        if (i >= k) {
          break;
        }
        aces[i] = new ACE();
        j = aces[i].decode(paramArrayOfByte, paramInt2);
        i += 1;
        paramInt2 = j + paramInt2;
      }
    }
    aces = null;
    int j = paramInt2;
    return j - paramInt1;
  }
  
  public String toString()
  {
    String str1 = "SecurityDescriptor:\n";
    if (aces != null)
    {
      int i = 0;
      for (;;)
      {
        str2 = str1;
        if (i >= aces.length) {
          break;
        }
        str1 = str1 + aces[i].toString() + "\n";
        i += 1;
      }
    }
    String str2 = "SecurityDescriptor:\n" + "NULL";
    return str2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SecurityDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */