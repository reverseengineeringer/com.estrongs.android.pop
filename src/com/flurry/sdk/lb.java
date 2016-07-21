package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public abstract interface lb<ObjectType>
{
  public abstract void a(OutputStream paramOutputStream, ObjectType paramObjectType);
  
  public abstract ObjectType b(InputStream paramInputStream);
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */