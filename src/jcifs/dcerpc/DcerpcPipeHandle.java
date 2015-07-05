package jcifs.dcerpc;

import java.io.IOException;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbFileOutputStream;
import jcifs.smb.SmbNamedPipe;
import jcifs.util.Encdec;

public class DcerpcPipeHandle
  extends DcerpcHandle
{
  SmbFileInputStream in = null;
  boolean isStart = true;
  SmbFileOutputStream out = null;
  SmbNamedPipe pipe;
  
  public DcerpcPipeHandle(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    binding = DcerpcHandle.parseBinding(paramString);
    String str2 = "smb://" + binding.server + "/IPC$/" + binding.endpoint.substring(6);
    String str3 = (String)binding.getOption("server");
    if (str3 != null) {}
    for (paramString = "" + "&server=" + str3;; paramString = "")
    {
      String str4 = (String)binding.getOption("address");
      String str1 = paramString;
      if (str3 != null) {
        str1 = paramString + "&address=" + str4;
      }
      if (str1.length() > 0) {}
      for (paramString = str2 + "?" + str1.substring(1);; paramString = str2)
      {
        pipe = new SmbNamedPipe(paramString, 27198979, paramNtlmPasswordAuthentication);
        return;
      }
    }
  }
  
  public void close()
  {
    state = 0;
    if (out != null) {
      out.close();
    }
  }
  
  protected void doReceiveFragment(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramArrayOfByte.length < max_recv) {
      throw new IllegalArgumentException("buffer too small");
    }
    if ((isStart) && (!paramBoolean)) {}
    for (int i = in.read(paramArrayOfByte, 0, 1024); (paramArrayOfByte[0] != 5) && (paramArrayOfByte[1] != 0); i = in.readDirect(paramArrayOfByte, 0, paramArrayOfByte.length)) {
      throw new IOException("Unexpected DCERPC PDU header");
    }
    if ((paramArrayOfByte[3] & 0xFF & 0x2) == 2) {}
    int j;
    for (paramBoolean = bool;; paramBoolean = false)
    {
      isStart = paramBoolean;
      j = Encdec.dec_uint16le(paramArrayOfByte, 8);
      if (j <= max_recv) {
        break;
      }
      throw new IOException("Unexpected fragment length: " + j);
    }
    while (i < j) {
      i += in.readDirect(paramArrayOfByte, i, j - i);
    }
  }
  
  protected void doSendFragment(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((out != null) && (!out.isOpen())) {
      throw new IOException("DCERPC pipe is no longer open");
    }
    if (in == null) {
      in = ((SmbFileInputStream)pipe.getNamedPipeInputStream());
    }
    if (out == null) {
      out = ((SmbFileOutputStream)pipe.getNamedPipeOutputStream());
    }
    if (paramBoolean)
    {
      out.writeDirect(paramArrayOfByte, paramInt1, paramInt2, 1);
      return;
    }
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcPipeHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */