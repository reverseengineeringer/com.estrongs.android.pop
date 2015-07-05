package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;
import jcifs.dcerpc.rpc.sid_t;

public class samr$SamrOpenDomain
  extends DcerpcMessage
{
  public int access_mask;
  public rpc.policy_handle domain_handle;
  public rpc.policy_handle handle;
  public int retval;
  public rpc.sid_t sid;
  
  public samr$SamrOpenDomain(rpc.policy_handle parampolicy_handle1, int paramInt, rpc.sid_t paramsid_t, rpc.policy_handle parampolicy_handle2)
  {
    handle = parampolicy_handle1;
    access_mask = paramInt;
    sid = paramsid_t;
    domain_handle = parampolicy_handle2;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    domain_handle.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    handle.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_long(access_mask);
    sid.encode(paramNdrBuffer);
  }
  
  public int getOpnum()
  {
    return 7;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrOpenDomain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */