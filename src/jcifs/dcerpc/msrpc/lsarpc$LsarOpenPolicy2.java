package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class lsarpc$LsarOpenPolicy2
  extends DcerpcMessage
{
  public int desired_access;
  public lsarpc.LsarObjectAttributes object_attributes;
  public rpc.policy_handle policy_handle;
  public int retval;
  public String system_name;
  
  public lsarpc$LsarOpenPolicy2(String paramString, lsarpc.LsarObjectAttributes paramLsarObjectAttributes, int paramInt, rpc.policy_handle parampolicy_handle)
  {
    system_name = paramString;
    object_attributes = paramLsarObjectAttributes;
    desired_access = paramInt;
    policy_handle = parampolicy_handle;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    policy_handle.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_referent(system_name, 1);
    if (system_name != null) {
      paramNdrBuffer.enc_ndr_string(system_name);
    }
    object_attributes.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_long(desired_access);
  }
  
  public int getOpnum()
  {
    return 44;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarOpenPolicy2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */