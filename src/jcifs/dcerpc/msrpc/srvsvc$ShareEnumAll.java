package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareEnumAll
  extends DcerpcMessage
{
  public NdrObject info;
  public int level;
  public int prefmaxlen;
  public int resume_handle;
  public int retval;
  public String servername;
  public int totalentries;
  
  public srvsvc$ShareEnumAll(String paramString, int paramInt1, NdrObject paramNdrObject, int paramInt2, int paramInt3, int paramInt4)
  {
    servername = paramString;
    level = paramInt1;
    info = paramNdrObject;
    prefmaxlen = paramInt2;
    totalentries = paramInt3;
    resume_handle = paramInt4;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    level = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (info == null) {
        info = new srvsvc.ShareInfoCtr0();
      }
      localNdrBuffer = deferred;
      info.decode(localNdrBuffer);
    }
    totalentries = localNdrBuffer.dec_ndr_long();
    resume_handle = localNdrBuffer.dec_ndr_long();
    retval = localNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_referent(servername, 1);
    if (servername != null) {
      paramNdrBuffer.enc_ndr_string(servername);
    }
    paramNdrBuffer.enc_ndr_long(level);
    paramNdrBuffer.enc_ndr_long(level);
    paramNdrBuffer.enc_ndr_referent(info, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (info != null)
    {
      localNdrBuffer = deferred;
      info.encode(localNdrBuffer);
    }
    localNdrBuffer.enc_ndr_long(prefmaxlen);
    localNdrBuffer.enc_ndr_long(resume_handle);
  }
  
  public int getOpnum()
  {
    return 15;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareEnumAll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */