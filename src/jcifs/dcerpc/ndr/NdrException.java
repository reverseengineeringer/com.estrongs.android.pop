package jcifs.dcerpc.ndr;

import java.io.IOException;

public class NdrException
  extends IOException
{
  public static final String INVALID_CONFORMANCE = "invalid array conformance";
  public static final String NO_NULL_REF = "ref pointer cannot be null";
  
  public NdrException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */