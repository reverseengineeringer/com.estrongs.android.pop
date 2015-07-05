package com.gmail.yuyang226.flickr.c;

import com.gmail.yuyang226.flickr.c;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class b
  implements c
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private Element f;
  
  public JSONObject a()
  {
    throw new UnsupportedOperationException();
  }
  
  public void a(Document paramDocument)
  {
    f = paramDocument.getDocumentElement();
    a = f.getAttribute("stat");
    if ("ok".equals(a))
    {
      paramDocument = (Element)f.getElementsByTagName("photoid").item(0);
      if (paramDocument != null) {}
      for (b = ((Text)paramDocument.getFirstChild()).getData();; b = null)
      {
        paramDocument = (Element)f.getElementsByTagName("ticketid").item(0);
        if (paramDocument == null) {
          break;
        }
        c = ((Text)paramDocument.getFirstChild()).getData();
        return;
      }
      c = null;
      return;
    }
    paramDocument = (Element)f.getElementsByTagName("err").item(0);
    d = paramDocument.getAttribute("code");
    e = paramDocument.getAttribute("msg");
  }
  
  public boolean b()
  {
    return e != null;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return e;
  }
  
  public String e()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */