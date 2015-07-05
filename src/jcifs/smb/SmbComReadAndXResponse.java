package jcifs.smb;

class SmbComReadAndXResponse
  extends AndXServerMessageBlock
{
  byte[] b;
  int dataCompactionMode;
  int dataLength;
  int dataOffset;
  int off;
  
  SmbComReadAndXResponse() {}
  
  SmbComReadAndXResponse(byte[] paramArrayOfByte, int paramInt)
  {
    b = paramArrayOfByte;
    off = paramInt;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 2;
    dataCompactionMode = readInt2(paramArrayOfByte, i);
    i += 4;
    dataLength = readInt2(paramArrayOfByte, i);
    i += 2;
    dataOffset = readInt2(paramArrayOfByte, i);
    return i + 12 - paramInt;
  }
  
  void setParam(byte[] paramArrayOfByte, int paramInt)
  {
    b = paramArrayOfByte;
    off = paramInt;
  }
  
  public String toString()
  {
    return new String("SmbComReadAndXResponse[" + super.toString() + ",dataCompactionMode=" + dataCompactionMode + ",dataLength=" + dataLength + ",dataOffset=" + dataOffset + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComReadAndXResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */