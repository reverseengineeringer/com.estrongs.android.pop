package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.ndr.NdrSmall;
import jcifs.dcerpc.rpc.unicode_string;

public class lsarpc$LsarObjectAttributes
  extends NdrObject
{
  public int attributes;
  public int length;
  public rpc.unicode_string object_name;
  public NdrSmall root_directory;
  public int security_descriptor;
  public lsarpc.LsarQosInfo security_quality_of_service;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    length = paramNdrBuffer.dec_ndr_long();
    int i = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    attributes = paramNdrBuffer.dec_ndr_long();
    security_descriptor = paramNdrBuffer.dec_ndr_long();
    int k = paramNdrBuffer.dec_ndr_long();
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      root_directory.decode(paramNdrBuffer);
    }
    for (;;)
    {
      NdrBuffer localNdrBuffer = paramNdrBuffer;
      if (j != 0)
      {
        if (object_name == null) {
          object_name = new rpc.unicode_string();
        }
        localNdrBuffer = deferred;
        object_name.decode(localNdrBuffer);
      }
      if (k != 0)
      {
        if (security_quality_of_service == null) {
          security_quality_of_service = new lsarpc.LsarQosInfo();
        }
        paramNdrBuffer = deferred;
        security_quality_of_service.decode(paramNdrBuffer);
      }
      return;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(length);
    paramNdrBuffer.enc_ndr_referent(root_directory, 1);
    paramNdrBuffer.enc_ndr_referent(object_name, 1);
    paramNdrBuffer.enc_ndr_long(attributes);
    paramNdrBuffer.enc_ndr_long(security_descriptor);
    paramNdrBuffer.enc_ndr_referent(security_quality_of_service, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (root_directory != null)
    {
      localNdrBuffer = deferred;
      root_directory.encode(localNdrBuffer);
    }
    paramNdrBuffer = localNdrBuffer;
    if (object_name != null)
    {
      paramNdrBuffer = deferred;
      object_name.encode(paramNdrBuffer);
    }
    if (security_quality_of_service != null)
    {
      paramNdrBuffer = deferred;
      security_quality_of_service.encode(paramNdrBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarObjectAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */