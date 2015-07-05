package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;

public abstract interface DcerpcSecurityProvider
{
  public abstract void unwrap(NdrBuffer paramNdrBuffer);
  
  public abstract void wrap(NdrBuffer paramNdrBuffer);
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcSecurityProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */