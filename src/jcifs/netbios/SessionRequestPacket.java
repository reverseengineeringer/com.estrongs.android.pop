package jcifs.netbios;

import java.io.IOException;
import java.io.InputStream;

public class SessionRequestPacket
  extends SessionServicePacket
{
  private Name calledName;
  private Name callingName;
  
  SessionRequestPacket()
  {
    calledName = new Name();
    callingName = new Name();
  }
  
  public SessionRequestPacket(Name paramName1, Name paramName2)
  {
    type = 129;
    calledName = paramName1;
    callingName = paramName2;
  }
  
  int readTrailerWireFormat(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInputStream.read(paramArrayOfByte, paramInt, length) != length) {
      throw new IOException("invalid session request wire format");
    }
    int i = calledName.readWireFormat(paramArrayOfByte, paramInt) + paramInt;
    return i + callingName.readWireFormat(paramArrayOfByte, i) - paramInt;
  }
  
  int writeTrailerWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = calledName.writeWireFormat(paramArrayOfByte, paramInt) + paramInt;
    return i + callingName.writeWireFormat(paramArrayOfByte, i) - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.SessionRequestPacket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */