package jcifs.smb;

import java.io.IOException;

class NtTransQuerySecurityDescResponse
  extends SmbComNtTransactionResponse
{
  SecurityDescriptor securityDescriptor;
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (errorCode != 0) {
      return 4;
    }
    try
    {
      securityDescriptor = new SecurityDescriptor();
      paramInt2 = securityDescriptor.decode(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2 + paramInt1 - paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new RuntimeException(paramArrayOfByte.getMessage());
    }
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    length = readInt4(paramArrayOfByte, paramInt1);
    return 4;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("NtTransQuerySecurityResponse[" + super.toString() + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtTransQuerySecurityDescResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */