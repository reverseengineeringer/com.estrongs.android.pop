package jcifs.netbios;

class NameQueryResponse
  extends NameServicePacket
{
  NameQueryResponse()
  {
    recordName = new Name();
  }
  
  int readBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return readResourceRecordWireFormat(paramArrayOfByte, paramInt);
  }
  
  int readRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool = false;
    if ((resultCode != 0) || (opCode != 0)) {
      return 0;
    }
    if ((paramArrayOfByte[paramInt] & 0x80) == 128) {
      bool = true;
    }
    int i = paramArrayOfByte[paramInt];
    paramInt = readInt4(paramArrayOfByte, paramInt + 2);
    if (paramInt != 0) {
      addrEntry[addrIndex] = new NbtAddress(recordName, paramInt, bool, (i & 0x60) >> 5);
    }
    for (;;)
    {
      return 6;
      addrEntry[addrIndex] = null;
    }
  }
  
  public String toString()
  {
    return new String("NameQueryResponse[" + super.toString() + ",addrEntry=" + addrEntry + "]");
  }
  
  int writeBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NameQueryResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */