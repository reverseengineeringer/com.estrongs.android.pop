package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class ky<ObjectType>
  implements lb<ObjectType>
{
  protected final lb<ObjectType> a;
  
  public ky(lb<ObjectType> paramlb)
  {
    a = paramlb;
  }
  
  public void a(OutputStream paramOutputStream, ObjectType paramObjectType)
  {
    if ((a != null) && (paramOutputStream != null) && (paramObjectType != null)) {
      a.a(paramOutputStream, paramObjectType);
    }
  }
  
  public ObjectType b(InputStream paramInputStream)
  {
    if ((a != null) && (paramInputStream != null)) {
      return (ObjectType)a.b(paramInputStream);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */