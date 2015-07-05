package jcifs.netbios;

import java.io.IOException;
import java.io.InputStream;

class SessionRetargetResponsePacket
  extends SessionServicePacket
{
  private NbtAddress retargetAddress;
  private int retargetPort;
  
  SessionRetargetResponsePacket()
  {
    type = 132;
    length = 6;
  }
  
  int readTrailerWireFormat(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInputStream.read(paramArrayOfByte, paramInt, length) != length) {
      throw new IOException("unexpected EOF reading netbios retarget session response");
    }
    retargetAddress = new NbtAddress(null, readInt4(paramArrayOfByte, paramInt), false, 0);
    retargetPort = readInt2(paramArrayOfByte, paramInt + 4);
    return length;
  }
  
  int writeTrailerWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.SessionRetargetResponsePacket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */