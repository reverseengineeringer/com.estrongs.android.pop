package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;

abstract interface Provider
{
  public abstract EventReader provide(InputStream paramInputStream);
  
  public abstract EventReader provide(Reader paramReader);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Provider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */