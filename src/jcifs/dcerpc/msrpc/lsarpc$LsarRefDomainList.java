package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class lsarpc$LsarRefDomainList
  extends NdrObject
{
  public int count;
  public lsarpc.LsarTrustInformation[] domains;
  public int max_count;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    count = paramNdrBuffer.dec_ndr_long();
    int i = paramNdrBuffer.dec_ndr_long();
    max_count = paramNdrBuffer.dec_ndr_long();
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      int j = paramNdrBuffer.dec_ndr_long();
      i = index;
      paramNdrBuffer.advance(j * 12);
      if (domains == null)
      {
        if ((j < 0) || (j > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        domains = new lsarpc.LsarTrustInformation[j];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        if (domains[i] == null) {
          domains[i] = new lsarpc.LsarTrustInformation();
        }
        domains[i].decode(paramNdrBuffer);
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(count);
    paramNdrBuffer.enc_ndr_referent(domains, 1);
    paramNdrBuffer.enc_ndr_long(max_count);
    if (domains != null)
    {
      paramNdrBuffer = deferred;
      int j = count;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 12);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        domains[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarRefDomainList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */