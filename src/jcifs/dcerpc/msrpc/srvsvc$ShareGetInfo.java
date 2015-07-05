package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareGetInfo
  extends DcerpcMessage
{
  public NdrObject info;
  public int level;
  public int retval;
  public String servername;
  public String sharename;
  
  public srvsvc$ShareGetInfo(String paramString1, String paramString2, int paramInt, NdrObject paramNdrObject)
  {
    servername = paramString1;
    sharename = paramString2;
    level = paramInt;
    info = paramNdrObject;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (info == null) {
        info = new srvsvc.ShareInfo0();
      }
      localNdrBuffer = deferred;
      info.decode(localNdrBuffer);
    }
    retval = localNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_referent(servername, 1);
    if (servername != null) {
      paramNdrBuffer.enc_ndr_string(servername);
    }
    paramNdrBuffer.enc_ndr_string(sharename);
    paramNdrBuffer.enc_ndr_long(level);
  }
  
  public int getOpnum()
  {
    return 16;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareGetInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */