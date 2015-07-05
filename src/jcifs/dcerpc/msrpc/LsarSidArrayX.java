package jcifs.dcerpc.msrpc;

import jcifs.smb.SID;

class LsarSidArrayX
  extends lsarpc.LsarSidArray
{
  LsarSidArrayX(SID[] paramArrayOfSID)
  {
    num_sids = paramArrayOfSID.length;
    sids = new lsarpc.LsarSidPtr[paramArrayOfSID.length];
    int i = 0;
    while (i < paramArrayOfSID.length)
    {
      sids[i] = new lsarpc.LsarSidPtr();
      sids[i].sid = paramArrayOfSID[i];
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.LsarSidArrayX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */