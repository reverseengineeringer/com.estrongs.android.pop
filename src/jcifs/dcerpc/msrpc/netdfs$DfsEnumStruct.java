package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsEnumStruct
  extends NdrObject
{
  public NdrObject e;
  public int level;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    level = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (e == null) {
        e = new netdfs.DfsEnumArray1();
      }
      paramNdrBuffer = deferred;
      e.decode(paramNdrBuffer);
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(level);
    paramNdrBuffer.enc_ndr_long(level);
    paramNdrBuffer.enc_ndr_referent(e, 1);
    if (e != null)
    {
      paramNdrBuffer = deferred;
      e.encode(paramNdrBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsEnumStruct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */