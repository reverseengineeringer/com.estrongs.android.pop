package de.aflx.sardine.model;

import de.aflx.sardine.util.QName;

public class ObjectFactory
{
  private static final QName _Depth_QNAME;
  private static final QName _Dst_QNAME;
  private static final QName _Href_QNAME = new QName("DAV:", "href");
  private static final QName _Responsedescription_QNAME;
  private static final QName _Src_QNAME;
  private static final QName _Status_QNAME = new QName("DAV:", "status");
  private static final QName _Timeout_QNAME;
  
  static
  {
    _Dst_QNAME = new QName("DAV:", "dst");
    _Src_QNAME = new QName("DAV:", "src");
    _Timeout_QNAME = new QName("DAV:", "timeout");
    _Depth_QNAME = new QName("DAV:", "depth");
    _Responsedescription_QNAME = new QName("DAV:", "responsedescription");
  }
  
  public Activelock createActivelock()
  {
    return new Activelock();
  }
  
  public Allprop createAllprop()
  {
    return new Allprop();
  }
  
  public Collection createCollection()
  {
    return new Collection();
  }
  
  public Creationdate createCreationdate()
  {
    return new Creationdate();
  }
  
  public Displayname createDisplayname()
  {
    return new Displayname();
  }
  
  public Error createError()
  {
    return new Error();
  }
  
  public Exclusive createExclusive()
  {
    return new Exclusive();
  }
  
  public Getcontentlanguage createGetcontentlanguage()
  {
    return new Getcontentlanguage();
  }
  
  public Getcontentlength createGetcontentlength()
  {
    return new Getcontentlength();
  }
  
  public Getcontenttype createGetcontenttype()
  {
    return new Getcontenttype();
  }
  
  public Getetag createGetetag()
  {
    return new Getetag();
  }
  
  public Getlastmodified createGetlastmodified()
  {
    return new Getlastmodified();
  }
  
  public Keepalive createKeepalive()
  {
    return new Keepalive();
  }
  
  public Link createLink()
  {
    return new Link();
  }
  
  public Lockdiscovery createLockdiscovery()
  {
    return new Lockdiscovery();
  }
  
  public Lockentry createLockentry()
  {
    return new Lockentry();
  }
  
  public Lockinfo createLockinfo()
  {
    return new Lockinfo();
  }
  
  public Lockscope createLockscope()
  {
    return new Lockscope();
  }
  
  public Locktoken createLocktoken()
  {
    return new Locktoken();
  }
  
  public Locktype createLocktype()
  {
    return new Locktype();
  }
  
  public Multistatus createMultistatus()
  {
    return new Multistatus();
  }
  
  public Omit createOmit()
  {
    return new Omit();
  }
  
  public Owner createOwner()
  {
    return new Owner();
  }
  
  public Prop createProp()
  {
    return new Prop();
  }
  
  public Propertybehavior createPropertybehavior()
  {
    return new Propertybehavior();
  }
  
  public Propertyupdate createPropertyupdate()
  {
    return new Propertyupdate();
  }
  
  public Propfind createPropfind()
  {
    return new Propfind();
  }
  
  public Propname createPropname()
  {
    return new Propname();
  }
  
  public Propstat createPropstat()
  {
    return new Propstat();
  }
  
  public Remove createRemove()
  {
    return new Remove();
  }
  
  public Resourcetype createResourcetype()
  {
    return new Resourcetype();
  }
  
  public Response createResponse()
  {
    return new Response();
  }
  
  public Set createSet()
  {
    return new Set();
  }
  
  public Shared createShared()
  {
    return new Shared();
  }
  
  public Source createSource()
  {
    return new Source();
  }
  
  public Supportedlock createSupportedlock()
  {
    return new Supportedlock();
  }
  
  public Write createWrite()
  {
    return new Write();
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.ObjectFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */