package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class samr$SamrEnumerateAliasesInDomain
  extends DcerpcMessage
{
  public int acct_flags;
  public rpc.policy_handle domain_handle;
  public int num_entries;
  public int resume_handle;
  public int retval;
  public samr.SamrSamArray sam;
  
  public samr$SamrEnumerateAliasesInDomain(rpc.policy_handle parampolicy_handle, int paramInt1, int paramInt2, samr.SamrSamArray paramSamrSamArray, int paramInt3)
  {
    domain_handle = parampolicy_handle;
    resume_handle = paramInt1;
    acct_flags = paramInt2;
    sam = paramSamrSamArray;
    num_entries = paramInt3;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    resume_handle = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (sam == null) {
        sam = new samr.SamrSamArray();
      }
      sam.decode(paramNdrBuffer);
    }
    num_entries = paramNdrBuffer.dec_ndr_long();
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    domain_handle.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_long(resume_handle);
    paramNdrBuffer.enc_ndr_long(acct_flags);
  }
  
  public int getOpnum()
  {
    return 15;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrEnumerateAliasesInDomain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */