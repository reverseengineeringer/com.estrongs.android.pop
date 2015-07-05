package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.rpc.policy_handle;

public class lsarpc$LsarLookupSids
  extends DcerpcMessage
{
  public int count;
  public lsarpc.LsarRefDomainList domains;
  public rpc.policy_handle handle;
  public short level;
  public lsarpc.LsarTransNameArray names;
  public int retval;
  public lsarpc.LsarSidArray sids;
  
  public lsarpc$LsarLookupSids(rpc.policy_handle parampolicy_handle, lsarpc.LsarSidArray paramLsarSidArray, lsarpc.LsarRefDomainList paramLsarRefDomainList, lsarpc.LsarTransNameArray paramLsarTransNameArray, short paramShort, int paramInt)
  {
    handle = parampolicy_handle;
    sids = paramLsarSidArray;
    domains = paramLsarRefDomainList;
    names = paramLsarTransNameArray;
    level = paramShort;
    count = paramInt;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (domains == null) {
        domains = new lsarpc.LsarRefDomainList();
      }
      domains.decode(paramNdrBuffer);
    }
    names.decode(paramNdrBuffer);
    count = paramNdrBuffer.dec_ndr_long();
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    handle.encode(paramNdrBuffer);
    sids.encode(paramNdrBuffer);
    names.encode(paramNdrBuffer);
    paramNdrBuffer.enc_ndr_short(level);
    paramNdrBuffer.enc_ndr_long(count);
  }
  
  public int getOpnum()
  {
    return 15;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarLookupSids
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */