package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsEnumArray200
  extends NdrObject
{
  public int count;
  public netdfs.DfsInfo200[] s;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    count = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer = deferred;
      int j = paramNdrBuffer.dec_ndr_long();
      int i = index;
      paramNdrBuffer.advance(j * 4);
      if (s == null)
      {
        if ((j < 0) || (j > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        s = new netdfs.DfsInfo200[j];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        if (s[i] == null) {
          s[i] = new netdfs.DfsInfo200();
        }
        s[i].decode(paramNdrBuffer);
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(count);
    paramNdrBuffer.enc_ndr_referent(s, 1);
    if (s != null)
    {
      paramNdrBuffer = deferred;
      int j = count;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 4);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        s[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsEnumArray200
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */