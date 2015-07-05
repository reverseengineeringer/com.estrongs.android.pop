package jcifs.netbios;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class SocketOutputStream
  extends FilterOutputStream
{
  SocketOutputStream(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 65535) {
      try
      {
        throw new IOException("write too large: " + paramInt2);
      }
      finally {}
    }
    if (paramInt1 < 4) {
      throw new IOException("NetBIOS socket output buffer requires 4 bytes available before off");
    }
    paramInt1 -= 4;
    paramArrayOfByte[(paramInt1 + 0)] = 0;
    paramArrayOfByte[(paramInt1 + 1)] = 0;
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 & 0xFF));
    out.write(paramArrayOfByte, paramInt1, paramInt2 + 4);
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.SocketOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */