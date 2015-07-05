package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.rpc.policy_handle;

public class lsarpc$LsarQueryInformationPolicy2
  extends DcerpcMessage
{
  public rpc.policy_handle handle;
  public NdrObject info;
  public short level;
  public int retval;
  
  public lsarpc$LsarQueryInformationPolicy2(rpc.policy_handle parampolicy_handle, short paramShort, NdrObject paramNdrObject)
  {
    handle = parampolicy_handle;
    level = paramShort;
    info = paramNdrObject;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer.dec_ndr_short();
      info.decode(paramNdrBuffer);
    }
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    handle.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_short(level);
  }
  
  public int getOpnum()
  {
    return 46;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarQueryInformationPolicy2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */