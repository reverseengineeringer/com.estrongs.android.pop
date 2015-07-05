package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

class PullProvider
  implements Provider
{
  private final XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
  
  public PullProvider()
  {
    factory.setNamespaceAware(true);
  }
  
  public EventReader provide(InputStream paramInputStream)
  {
    XmlPullParser localXmlPullParser = factory.newPullParser();
    if (paramInputStream != null) {
      localXmlPullParser.setInput(paramInputStream, null);
    }
    return new PullReader(localXmlPullParser);
  }
  
  public EventReader provide(Reader paramReader)
  {
    XmlPullParser localXmlPullParser = factory.newPullParser();
    if (paramReader != null) {
      localXmlPullParser.setInput(paramReader);
    }
    return new PullReader(localXmlPullParser);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PullProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */