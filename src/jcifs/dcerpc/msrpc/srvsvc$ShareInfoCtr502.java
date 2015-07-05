package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareInfoCtr502
  extends NdrObject
{
  public srvsvc.ShareInfo502[] array;
  public int count;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    count = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer = deferred;
      int j = paramNdrBuffer.dec_ndr_long();
      int i = index;
      paramNdrBuffer.advance(j * 40);
      if (array == null)
      {
        if ((j < 0) || (j > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        array = new srvsvc.ShareInfo502[j];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        if (array[i] == null) {
          array[i] = new srvsvc.ShareInfo502();
        }
        array[i].decode(paramNdrBuffer);
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(count);
    paramNdrBuffer.enc_ndr_referent(array, 1);
    if (array != null)
    {
      paramNdrBuffer = deferred;
      int j = count;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 40);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        array[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareInfoCtr502
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */