package jcifs.smb;

import java.io.UnsupportedEncodingException;

class NetShareEnum
  extends SmbComTransaction
{
  private static final String DESCR = "WrLeh\000B13BWz\000";
  
  NetShareEnum()
  {
    command = 37;
    subCommand = 0;
    name = new String("\\PIPE\\LANMAN");
    maxParameterCount = 8;
    maxSetupCount = 0;
    setupCount = 0;
    timeout = 5000;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("NetShareEnum[" + super.toString() + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      byte[] arrayOfByte = "WrLeh\000B13BWz\000".getBytes("ASCII");
      writeInt2(0L, paramArrayOfByte, paramInt);
      int i = paramInt + 2;
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i, arrayOfByte.length);
      i = arrayOfByte.length + i;
      writeInt2(1L, paramArrayOfByte, i);
      i += 2;
      writeInt2(maxDataCount, paramArrayOfByte, i);
      return i + 2 - paramInt;
    }
    catch (UnsupportedEncodingException paramArrayOfByte) {}
    return 0;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NetShareEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */