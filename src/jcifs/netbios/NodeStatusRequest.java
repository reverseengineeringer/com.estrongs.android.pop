package jcifs.netbios;

class NodeStatusRequest
  extends NameServicePacket
{
  NodeStatusRequest(Name paramName)
  {
    questionName = paramName;
    questionType = 33;
    isRecurDesired = false;
    isBroadcast = false;
  }
  
  int readBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("NodeStatusRequest[" + super.toString() + "]");
  }
  
  int writeBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = questionName.hexCode;
    questionName.hexCode = 0;
    paramInt = writeQuestionSectionWireFormat(paramArrayOfByte, paramInt);
    questionName.hexCode = i;
    return paramInt;
  }
  
  int writeRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NodeStatusRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */