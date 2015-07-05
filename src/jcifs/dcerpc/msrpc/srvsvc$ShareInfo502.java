package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareInfo502
  extends NdrObject
{
  public int current_uses;
  public int max_uses;
  public String netname;
  public String password;
  public String path;
  public int permissions;
  public String remark;
  public int sd_size;
  public byte[] security_descriptor;
  public int type;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    int i = paramNdrBuffer.dec_ndr_long();
    type = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    permissions = paramNdrBuffer.dec_ndr_long();
    max_uses = paramNdrBuffer.dec_ndr_long();
    current_uses = paramNdrBuffer.dec_ndr_long();
    int k = paramNdrBuffer.dec_ndr_long();
    int m = paramNdrBuffer.dec_ndr_long();
    sd_size = paramNdrBuffer.dec_ndr_long();
    int n = paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer;
    if (i != 0)
    {
      localNdrBuffer = deferred;
      netname = localNdrBuffer.dec_ndr_string();
    }
    for (;;)
    {
      paramNdrBuffer = localNdrBuffer;
      if (j != 0)
      {
        paramNdrBuffer = deferred;
        remark = paramNdrBuffer.dec_ndr_string();
      }
      localNdrBuffer = paramNdrBuffer;
      if (k != 0)
      {
        localNdrBuffer = deferred;
        path = localNdrBuffer.dec_ndr_string();
      }
      paramNdrBuffer = localNdrBuffer;
      if (m != 0)
      {
        paramNdrBuffer = deferred;
        password = paramNdrBuffer.dec_ndr_string();
      }
      if (n != 0)
      {
        paramNdrBuffer = deferred;
        j = paramNdrBuffer.dec_ndr_long();
        i = index;
        paramNdrBuffer.advance(j * 1);
        if (security_descriptor == null)
        {
          if ((j < 0) || (j > 65535)) {
            throw new NdrException("invalid array conformance");
          }
          security_descriptor = new byte[j];
        }
        paramNdrBuffer = paramNdrBuffer.derive(i);
        i = 0;
        while (i < j)
        {
          security_descriptor[i] = ((byte)paramNdrBuffer.dec_ndr_small());
          i += 1;
        }
      }
      return;
      localNdrBuffer = paramNdrBuffer;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(netname, 1);
    paramNdrBuffer.enc_ndr_long(type);
    paramNdrBuffer.enc_ndr_referent(remark, 1);
    paramNdrBuffer.enc_ndr_long(permissions);
    paramNdrBuffer.enc_ndr_long(max_uses);
    paramNdrBuffer.enc_ndr_long(current_uses);
    paramNdrBuffer.enc_ndr_referent(path, 1);
    paramNdrBuffer.enc_ndr_referent(password, 1);
    paramNdrBuffer.enc_ndr_long(sd_size);
    paramNdrBuffer.enc_ndr_referent(security_descriptor, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (netname != null)
    {
      localNdrBuffer = deferred;
      localNdrBuffer.enc_ndr_string(netname);
    }
    paramNdrBuffer = localNdrBuffer;
    if (remark != null)
    {
      paramNdrBuffer = deferred;
      paramNdrBuffer.enc_ndr_string(remark);
    }
    localNdrBuffer = paramNdrBuffer;
    if (path != null)
    {
      localNdrBuffer = deferred;
      localNdrBuffer.enc_ndr_string(path);
    }
    paramNdrBuffer = localNdrBuffer;
    if (password != null)
    {
      paramNdrBuffer = deferred;
      paramNdrBuffer.enc_ndr_string(password);
    }
    if (security_descriptor != null)
    {
      paramNdrBuffer = deferred;
      int j = sd_size;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 1);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        paramNdrBuffer.enc_ndr_small(security_descriptor[i]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareInfo502
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */