package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;

public class srvsvc$RemoteTOD
  extends DcerpcMessage
{
  public srvsvc.TimeOfDayInfo info;
  public int retval;
  public String servername;
  
  public srvsvc$RemoteTOD(String paramString, srvsvc.TimeOfDayInfo paramTimeOfDayInfo)
  {
    servername = paramString;
    info = paramTimeOfDayInfo;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (info == null) {
        info = new srvsvc.TimeOfDayInfo();
      }
      info.decode(paramNdrBuffer);
    }
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_referent(servername, 1);
    if (servername != null) {
      paramNdrBuffer.enc_ndr_string(servername);
    }
  }
  
  public int getOpnum()
  {
    return 28;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.RemoteTOD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */