package jcifs.smb;

public class DosFileFilter
  implements SmbFileFilter
{
  protected int attributes;
  protected String wildcard;
  
  public DosFileFilter(String paramString, int paramInt)
  {
    wildcard = paramString;
    attributes = paramInt;
  }
  
  public boolean accept(SmbFile paramSmbFile)
  {
    return (paramSmbFile.getAttributes() & attributes) != 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.DosFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */