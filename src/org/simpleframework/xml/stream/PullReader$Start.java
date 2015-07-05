package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Start
  extends EventElement
{
  private final int line;
  private final String name;
  private final String prefix;
  private final String reference;
  private final XmlPullParser source;
  
  public PullReader$Start(XmlPullParser paramXmlPullParser)
  {
    reference = paramXmlPullParser.getNamespace();
    line = paramXmlPullParser.getLineNumber();
    prefix = paramXmlPullParser.getPrefix();
    name = paramXmlPullParser.getName();
    source = paramXmlPullParser;
  }
  
  public int getLine()
  {
    return line;
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
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PullReader.Start
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */