package de.aflx.sardine.model;

public class Propfind
{
  protected Allprop allprop;
  protected Prop prop;
  protected Propname propname;
  
  public Allprop getAllprop()
  {
    return allprop;
  }
  
  public Prop getProp()
  {
    return prop;
  }
  
  public Propname getPropname()
  {
    return propname;
  }
  
  public void setAllprop(Allprop paramAllprop)
  {
    allprop = paramAllprop;
  }
  
  public void setProp(Prop paramProp)
  {
    prop = paramProp;
  }
  
  public void setPropname(Propname paramPropname)
  {
    propname = paramPropname;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Propfind
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */