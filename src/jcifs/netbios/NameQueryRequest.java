package jcifs.netbios;

class NameQueryRequest
  extends NameServicePacket
{
  NameQueryRequest(Name paramName)
  {
    questionName = paramName;
    questionType = 32;
  }
  
  int readBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return readQuestionSectionWireFormat(paramArrayOfByte, paramInt);
  }
  
  int readRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("NameQueryRequest[" + super.toString() + "]");
  }
  
  int writeBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return writeQuestionSectionWireFormat(paramArrayOfByte, paramInt);
  }
  
  int writeRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NameQueryRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */