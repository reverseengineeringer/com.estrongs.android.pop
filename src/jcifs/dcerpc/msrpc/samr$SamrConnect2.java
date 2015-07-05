package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class samr$SamrConnect2
  extends DcerpcMessage
{
  public int access_mask;
  public rpc.policy_handle handle;
  public int retval;
  public String system_name;
  
  public samr$SamrConnect2(String paramString, int paramInt, rpc.policy_handle parampolicy_handle)
  {
    system_name = paramString;
    access_mask = paramInt;
    handle = parampolicy_handle;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    handle.decode(paramNdrBuffer);
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_referent(system_name, 1);
    if (system_name != null) {
      paramNdrBuffer.enc_ndr_string(system_name);
    }
    paramNdrBuffer.enc_ndr_long(access_mask);
  }
  
  public int getOpnum()
  {
    return 57;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrConnect2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */