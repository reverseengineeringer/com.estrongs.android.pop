package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class samr$SamrOpenAlias
  extends DcerpcMessage
{
  public int access_mask;
  public rpc.policy_handle alias_handle;
  public rpc.policy_handle domain_handle;
  public int retval;
  public int rid;
  
  public samr$SamrOpenAlias(rpc.policy_handle parampolicy_handle1, int paramInt1, int paramInt2, rpc.policy_handle parampolicy_handle2)
  {
    domain_handle = parampolicy_handle1;
    access_mask = paramInt1;
    rid = paramInt2;
    alias_handle = parampolicy_handle2;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    alias_handle.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    domain_handle.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_long(access_mask);
    paramNdrBuffer.enc_ndr_long(rid);
  }
  
  public int getOpnum()
  {
    return 27;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrOpenAlias
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */