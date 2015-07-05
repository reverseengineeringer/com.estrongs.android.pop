package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;

public final class NodeBuilder
{
  private static Provider provider = ;
  
  public static InputNode read(InputStream paramInputStream)
  {
    return read(provider.provide(paramInputStream));
  }
  
  public static InputNode read(Reader paramReader)
  {
    return read(provider.provide(paramReader));
  }
  
  private static InputNode read(EventReader paramEventReader)
  {
    return new NodeReader(paramEventReader).readRoot();
  }
  
  public static OutputNode write(Writer paramWriter)
  {
    return write(paramWriter, new Format());
  }
  
  public static OutputNode write(Writer paramWriter, Format paramFormat)
  {
    return new NodeWriter(paramWriter, paramFormat).writeRoot();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NodeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */