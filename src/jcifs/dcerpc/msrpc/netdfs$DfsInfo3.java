package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsInfo3
  extends NdrObject
{
  public String comment;
  public int num_stores;
  public String path;
  public int state;
  public netdfs.DfsStorageInfo[] stores;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    int i = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    state = paramNdrBuffer.dec_ndr_long();
    num_stores = paramNdrBuffer.dec_ndr_long();
    int k = paramNdrBuffer.dec_ndr_long();
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      path = paramNdrBuffer.dec_ndr_string();
    }
    for (;;)
    {
      NdrBuffer localNdrBuffer = paramNdrBuffer;
      if (j != 0)
      {
        localNdrBuffer = deferred;
        comment = localNdrBuffer.dec_ndr_string();
      }
      if (k != 0)
      {
        paramNdrBuffer = deferred;
        j = paramNdrBuffer.dec_ndr_long();
        i = index;
        paramNdrBuffer.advance(j * 12);
        if (stores == null)
        {
          if ((j < 0) || (j > 65535)) {
            throw new NdrException("invalid array conformance");
          }
          stores = new netdfs.DfsStorageInfo[j];
        }
        paramNdrBuffer = paramNdrBuffer.derive(i);
        i = 0;
        while (i < j)
        {
          if (stores[i] == null) {
            stores[i] = new netdfs.DfsStorageInfo();
          }
          stores[i].decode(paramNdrBuffer);
          i += 1;
        }
      }
      return;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(path, 1);
    paramNdrBuffer.enc_ndr_referent(comment, 1);
    paramNdrBuffer.enc_ndr_long(state);
    paramNdrBuffer.enc_ndr_long(num_stores);
    paramNdrBuffer.enc_ndr_referent(stores, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (path != null)
    {
      localNdrBuffer = deferred;
      localNdrBuffer.enc_ndr_string(path);
    }
    paramNdrBuffer = localNdrBuffer;
    if (comment != null)
    {
      paramNdrBuffer = deferred;
      paramNdrBuffer.enc_ndr_string(comment);
    }
    if (stores != null)
    {
      paramNdrBuffer = deferred;
      int j = num_stores;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 12);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        stores[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsInfo3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */