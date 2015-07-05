package com.estrongs.bluetooth.parser;

import java.util.ArrayList;

public class a
{
  private static final String b = System.getProperty("line.separator");
  private static final String c = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" + b + "<!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\">";
  ArrayList<OBEXElement> a = new ArrayList();
  private volatile boolean d = false;
  
  private static void a(StringBuffer paramStringBuffer, String paramString)
  {
    paramStringBuffer.append(paramString);
  }
  
  public String a(ArrayList<OBEXElement> paramArrayList)
  {
    a();
    StringBuffer localStringBuffer = new StringBuffer();
    a(localStringBuffer, c);
    a(localStringBuffer, b);
    a(localStringBuffer, "<folder-listing version=\"1.0\">");
    a(localStringBuffer, b);
    a(localStringBuffer, "  <parent-folder/>");
    a(localStringBuffer, b);
    int i = 0;
    if (i < paramArrayList.size())
    {
      OBEXElement localOBEXElement = (OBEXElement)paramArrayList.get(i);
      boolean bool = localOBEXElement.e();
      StringBuilder localStringBuilder = new StringBuilder().append("  <");
      if (bool) {}
      for (String str = "folder";; str = "file")
      {
        a(localStringBuffer, str + " " + "name" + "=\"" + localOBEXElement.b() + "\"" + " " + "size" + "=\"" + localOBEXElement.c() + "\"" + " " + "modified" + "=\"" + localOBEXElement.g() + "\"" + " " + "user-perm" + "=\"" + localOBEXElement.h() + "\"" + " />");
        a(localStringBuffer, b);
        i += 1;
        break;
      }
    }
    a(localStringBuffer, "</folder-listing>");
    a(localStringBuffer, b);
    b();
    return localStringBuffer.toString();
  }
  
  /* Error */
  public ArrayList<OBEXElement> a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	com/estrongs/bluetooth/parser/a:a	()V
    //   4: aload_0
    //   5: getfield 50	com/estrongs/bluetooth/parser/a:a	Ljava/util/ArrayList;
    //   8: invokevirtual 134	java/util/ArrayList:clear	()V
    //   11: invokestatic 140	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   14: astore_3
    //   15: aconst_null
    //   16: astore_2
    //   17: aload_3
    //   18: invokevirtual 144	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   21: astore_3
    //   22: aload_3
    //   23: astore_2
    //   24: aload_2
    //   25: aload_1
    //   26: new 146	com/estrongs/bluetooth/parser/b
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 149	com/estrongs/bluetooth/parser/b:<init>	(Lcom/estrongs/bluetooth/parser/a;)V
    //   34: invokevirtual 155	javax/xml/parsers/SAXParser:parse	(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    //   37: aload_0
    //   38: invokevirtual 121	com/estrongs/bluetooth/parser/a:b	()V
    //   41: aload_0
    //   42: getfield 50	com/estrongs/bluetooth/parser/a:a	Ljava/util/ArrayList;
    //   45: areturn
    //   46: astore_3
    //   47: goto -23 -> 24
    //   50: astore_3
    //   51: goto -27 -> 24
    //   54: astore_1
    //   55: goto -18 -> 37
    //   58: astore_1
    //   59: goto -22 -> 37
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	a
    //   0	62	1	paramInputStream	java.io.InputStream
    //   16	9	2	localObject1	Object
    //   14	9	3	localObject2	Object
    //   46	1	3	localSAXException	org.xml.sax.SAXException
    //   50	1	3	localParserConfigurationException	javax.xml.parsers.ParserConfigurationException
    // Exception table:
    //   from	to	target	type
    //   17	22	46	org/xml/sax/SAXException
    //   17	22	50	javax/xml/parsers/ParserConfigurationException
    //   24	37	54	java/io/IOException
    //   24	37	58	org/xml/sax/SAXException
  }
  
  public void a()
  {
    try
    {
      for (;;)
      {
        boolean bool = d;
        if (!bool) {
          break;
        }
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      d = true;
      return;
    }
    finally {}
  }
  
  public void b()
  {
    try
    {
      d = false;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.parser.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */