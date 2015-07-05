package com.estrongs.bluetooth.parser;

import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

class b
  extends DefaultHandler
{
  private int b = 0;
  private StringBuffer c = new StringBuffer();
  
  public b(a parama) {}
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (b == 2) {
      c.append(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (b == 2) {
      c = new StringBuffer();
    }
    b -= 1;
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    b += 1;
    if (b == 2)
    {
      paramString1 = new OBEXElement();
      int i;
      if (paramString2.equalsIgnoreCase("file"))
      {
        paramString1.a(OBEXElement.OBEXElementType.FILE);
        i = 0;
        label45:
        if (i >= paramAttributes.getLength()) {
          break label186;
        }
        paramString2 = paramAttributes.getLocalName(i);
        if (!paramString2.equalsIgnoreCase("name")) {
          break label108;
        }
        paramString1.a(paramAttributes.getValue(i));
      }
      for (;;)
      {
        i += 1;
        break label45;
        paramString1.a(OBEXElement.OBEXElementType.FOLDER);
        break;
        label108:
        if (paramString2.equalsIgnoreCase("size")) {
          paramString1.a(Long.parseLong(paramAttributes.getValue(i)));
        } else if (paramString2.equalsIgnoreCase("modified")) {
          paramString1.b(paramAttributes.getValue(i));
        } else if (paramString2.equalsIgnoreCase("user-perm")) {
          paramString1.c(paramAttributes.getValue(i));
        }
      }
      label186:
      a.a.add(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.parser.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */