package jcifs.netbios;

import java.io.UnsupportedEncodingException;

class NodeStatusResponse
  extends NameServicePacket
{
  NbtAddress[] addressArray;
  private byte[] macAddress;
  private int numberOfNames;
  private NbtAddress queryAddress;
  private byte[] stats;
  
  NodeStatusResponse(NbtAddress paramNbtAddress)
  {
    queryAddress = paramNbtAddress;
    recordName = new Name();
    macAddress = new byte[6];
  }
  
  private int readNodeNameArray(byte[] paramArrayOfByte, int paramInt)
  {
    addressArray = new NbtAddress[numberOfNames];
    String str1 = queryAddress.hostName.scope;
    int i = 0;
    int k = 0;
    int j = paramInt;
    label50:
    label108:
    try
    {
      if (k >= numberOfNames) {
        break label334;
      }
      m = j + 14;
    }
    catch (UnsupportedEncodingException paramArrayOfByte) {}
    String str2 = new String(paramArrayOfByte, j, m - j + 1, Name.OEM_ENCODING);
    int m = paramArrayOfByte[(j + 15)] & 0xFF;
    boolean bool1;
    if ((paramArrayOfByte[(j + 16)] & 0x80) == 128) {
      bool1 = true;
    }
    for (;;)
    {
      int n;
      boolean bool2;
      boolean bool3;
      if ((i == 0) && (queryAddress.hostName.hexCode == m) && ((queryAddress.hostName == NbtAddress.UNKNOWN_NAME) || (queryAddress.hostName.name.equals(str2))))
      {
        if (queryAddress.hostName == NbtAddress.UNKNOWN_NAME) {
          queryAddress.hostName = new Name(str2, m, str1);
        }
        queryAddress.groupName = bool1;
        queryAddress.nodeType = n;
        queryAddress.isBeingDeleted = bool2;
        queryAddress.isInConflict = bool3;
        queryAddress.isActive = bool4;
        queryAddress.isPermanent = bool5;
        queryAddress.macAddress = macAddress;
        queryAddress.isDataFromNodeStatus = true;
        i = 1;
        addressArray[k] = queryAddress;
      }
      else
      {
        addressArray[k] = new NbtAddress(new Name(str2, m, str1), queryAddress.address, bool1, n, bool2, bool3, bool4, bool5, macAddress);
        break label442;
        label334:
        return j - paramInt;
        while (paramArrayOfByte[m] == 32) {
          m -= 1;
        }
        break label50;
        label357:
        n = (paramArrayOfByte[(j + 16)] & 0x60) >> 5;
        if ((paramArrayOfByte[(j + 16)] & 0x10) != 16) {
          break label464;
        }
        bool2 = true;
        label389:
        if ((paramArrayOfByte[(j + 16)] & 0x8) != 8) {
          break label470;
        }
        bool3 = true;
        label407:
        if ((paramArrayOfByte[(j + 16)] & 0x4) != 4) {
          break label476;
        }
      }
      label442:
      label464:
      label470:
      label476:
      for (boolean bool4 = true;; bool4 = false)
      {
        if ((paramArrayOfByte[(j + 16)] & 0x2) != 2) {
          break label482;
        }
        bool5 = true;
        break label108;
        k += 1;
        j += 18;
        break;
        bool1 = false;
        break label357;
        bool2 = false;
        break label389;
        bool3 = false;
        break label407;
      }
      label482:
      boolean bool5 = false;
    }
  }
  
  int readBodyWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return readResourceRecordWireFormat(paramArrayOfByte, paramInt);
  }
  
  int readRDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    numberOfNames = (paramArrayOfByte[paramInt] & 0xFF);
    int j = numberOfNames * 18;
    int i = rDataLength - j - 1;
    int k = paramInt + 1;
    numberOfNames = (paramArrayOfByte[paramInt] & 0xFF);
    System.arraycopy(paramArrayOfByte, j + k, macAddress, 0, 6);
    j = readNodeNameArray(paramArrayOfByte, k) + k;
    stats = new byte[i];
    System.arraycopy(paramArrayOfByte, j, stats, 0, i);
    return j + i - paramInt;
  }
  
  public String toString()
  {
    return new String("NodeStatusResponse[" + super.toString() + "]");
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
 * Qualified Name:     jcifs.netbios.NodeStatusResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */