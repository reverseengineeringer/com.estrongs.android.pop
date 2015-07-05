package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class samr$SamrGetMembersInAlias
  extends DcerpcMessage
{
  public rpc.policy_handle alias_handle;
  public int retval;
  public lsarpc.LsarSidArray sids;
  
  public samr$SamrGetMembersInAlias(rpc.policy_handle parampolicy_handle, lsarpc.LsarSidArray paramLsarSidArray)
  {
    alias_handle = parampolicy_handle;
    sids = paramLsarSidArray;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    sids.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    alias_handle.encode(paramNdrBuffer);
  }
  
  public int getOpnum()
  {
    return 33;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrGetMembersInAlias
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */