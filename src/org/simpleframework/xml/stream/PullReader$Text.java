package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Text
  extends EventToken
{
  private final XmlPullParser source;
  private final String text;
  
  public PullReader$Text(XmlPullParser paramXmlPullParser)
  {
    text = paramXmlPullParser.getText();
    source = paramXmlPullParser;
  }
  
  public Object getSource()
  {
    return source;
  }
  
  public String getValue()
  {
    return text;
  }
  
  public boolean isText()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.PullReader.Text
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */