package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Entry
  extends EventAttribute
{
  private final String name;
  private final String prefix;
  private final String reference;
  private final XmlPullParser source;
  private final String value;
  
  public PullReader$Entry(PullReader paramPullReader, XmlPullParser paramXmlPullParser, int paramInt)
  {
    reference = paramXmlPullParser.getAttributeNamespace(paramInt);
    prefix = paramXmlPullParser.getAttributePrefix(paramInt);
    value = paramXmlPullParser.getAttributeValue(paramInt);
    name = paramXmlPullParser.getAttributeName(paramInt);
    source = paramXmlPullParser;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPrefix()
  {
    return prefix;
  }
  
  public String getReference()
  {
    return reference;
  }
  
  public Object getSource()
  {
    return source;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public boolean isReserved()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PullReader.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */