package jcifs.smb;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public class SmbNamedPipe
  extends SmbFile
{
  public static final int PIPE_TYPE_CALL = 256;
  public static final int PIPE_TYPE_DCE_TRANSACT = 1536;
  public static final int PIPE_TYPE_RDONLY = 1;
  public static final int PIPE_TYPE_RDWR = 3;
  public static final int PIPE_TYPE_TRANSACT = 512;
  public static final int PIPE_TYPE_WRONLY = 2;
  InputStream pipeIn;
  OutputStream pipeOut;
  int pipeType;
  
  public SmbNamedPipe(String paramString, int paramInt)
  {
    super(paramString);
    pipeType = paramInt;
    type = 16;
  }
  
  public SmbNamedPipe(String paramString, int paramInt, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    super(paramString, paramNtlmPasswordAuthentication);
    pipeType = paramInt;
    type = 16;
  }
  
  public SmbNamedPipe(URL paramURL, int paramInt, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    super(paramURL, paramNtlmPasswordAuthentication);
    pipeType = paramInt;
    type = 16;
  }
  
  public InputStream getNamedPipeInputStream()
  {
    if (pipeIn == null) {
      if (((pipeType & 0x100) != 256) && ((pipeType & 0x200) != 512)) {
        break label52;
      }
    }
    label52:
    for (pipeIn = new TransactNamedPipeInputStream(this);; pipeIn = new SmbFileInputStream(this, pipeType & 0xFFFF00FF | 0x20)) {
      return pipeIn;
    }
  }
  
  public OutputStream getNamedPipeOutputStream()
  {
    if (pipeOut == null) {
      if (((pipeType & 0x100) != 256) && ((pipeType & 0x200) != 512)) {
        break label52;
      }
    }
    label52:
    for (pipeOut = new TransactNamedPipeOutputStream(this);; pipeOut = new SmbFileOutputStream(this, false, pipeType & 0xFFFF00FF | 0x20)) {
      return pipeOut;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbNamedPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */