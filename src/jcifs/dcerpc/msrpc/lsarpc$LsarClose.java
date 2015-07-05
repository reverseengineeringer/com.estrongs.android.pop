package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class lsarpc$LsarClose
  extends DcerpcMessage
{
  public rpc.policy_handle handle;
  public int retval;
  
  public lsarpc$LsarClose(rpc.policy_handle parampolicy_handle)
  {
    handle = parampolicy_handle;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    handle.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    handle.encode(paramNdrBuffer);
  }
  
  public int getOpnum()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarClose
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */