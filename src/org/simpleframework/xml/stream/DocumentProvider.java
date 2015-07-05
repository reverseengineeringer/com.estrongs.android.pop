package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.xml.sax.InputSource;

class DocumentProvider
  implements Provider
{
  private final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
  
  public DocumentProvider()
  {
    factory.setNamespaceAware(true);
  }
  
  private EventReader provide(InputSource paramInputSource)
  {
    return new DocumentReader(factory.newDocumentBuilder().parse(paramInputSource));
  }
  
  public EventReader provide(InputStream paramInputStream)
  {
    return provide(new InputSource(paramInputStream));
  }
  
  public EventReader provide(Reader paramReader)
  {
    return provide(new InputSource(paramReader));
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.DocumentProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */