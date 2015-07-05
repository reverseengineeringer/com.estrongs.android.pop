package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader
  implements EventReader
{
  private XmlPullParser parser;
  private EventNode peek;
  
  public PullReader(XmlPullParser paramXmlPullParser)
  {
    parser = paramXmlPullParser;
  }
  
  private PullReader.Entry attribute(int paramInt)
  {
    return new PullReader.Entry(this, parser, paramInt);
  }
  
  private PullReader.Start build(PullReader.Start paramStart)
  {
    int j = parser.getAttributeCount();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return paramStart;
      }
      PullReader.Entry localEntry = attribute(i);
      if (!localEntry.isReserved()) {
        paramStart.add(localEntry);
      }
      i += 1;
    }
  }
  
  private PullReader.End end()
  {
    return new PullReader.End(null);
  }
  
  private EventNode read()
  {
    int i = parser.next();
    if (i != 1)
    {
      if (i == 2) {
        return start();
      }
      if (i == 4) {
        return text();
      }
      if (i == 3) {
        return end();
      }
      return read();
    }
    return null;
  }
  
  private PullReader.Start start()
  {
    PullReader.Start localStart2 = new PullReader.Start(parser);
    PullReader.Start localStart1 = localStart2;
    if (localStart2.isEmpty()) {
      localStart1 = build(localStart2);
    }
    return localStart1;
  }
  
  private PullReader.Text text()
  {
    return new PullReader.Text(parser);
  }
  
  public EventNode next()
  {
    EventNode localEventNode = peek;
    if (localEventNode == null) {
      return read();
    }
    peek = null;
    return localEventNode;
  }
  
  public EventNode peek()
  {
    if (peek == null) {
      peek = next();
    }
    return peek;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PullReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */