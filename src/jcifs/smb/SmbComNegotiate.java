package jcifs.smb;

import java.io.UnsupportedEncodingException;

class SmbComNegotiate
  extends ServerMessageBlock
{
  private static final String DIALECTS = "\002NT LM 0.12\000";
  
  SmbComNegotiate()
  {
    command = 114;
    flags2 = DEFAULT_FLAGS2;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("SmbComNegotiate[" + super.toString() + ",wordCount=" + wordCount + ",dialects=NT LM 0.12]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      byte[] arrayOfByte = "\002NT LM 0.12\000".getBytes("ASCII");
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
      return arrayOfByte.length;
    }
    catch (UnsupportedEncodingException paramArrayOfByte) {}
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComNegotiate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */