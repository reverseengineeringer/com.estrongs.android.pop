package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

public class fo
{
  private static final String a = null;
  private static fo.a b = fo.a.a;
  
  /* Error */
  public static fm a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 28	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: getstatic 16	com/flurry/sdk/fo$a:a	Lcom/flurry/sdk/fo$a;
    //   12: invokestatic 31	com/flurry/sdk/fo:a	(Lcom/flurry/sdk/fo$a;)V
    //   15: new 33	java/io/StringReader
    //   18: dup
    //   19: aload_0
    //   20: invokespecial 37	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   23: astore_3
    //   24: aload_3
    //   25: astore_1
    //   26: invokestatic 43	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   29: astore_2
    //   30: aload_3
    //   31: astore_1
    //   32: aload_2
    //   33: ldc 45
    //   35: iconst_0
    //   36: invokeinterface 51 3 0
    //   41: aload_3
    //   42: astore_1
    //   43: aload_2
    //   44: aload_3
    //   45: invokeinterface 55 2 0
    //   50: aload_3
    //   51: astore_1
    //   52: aload_2
    //   53: invokeinterface 59 1 0
    //   58: pop
    //   59: aload_3
    //   60: astore_1
    //   61: aload_2
    //   62: new 61	com/flurry/sdk/fm$a
    //   65: dup
    //   66: invokespecial 63	com/flurry/sdk/fm$a:<init>	()V
    //   69: new 65	java/util/ArrayList
    //   72: dup
    //   73: invokespecial 66	java/util/ArrayList:<init>	()V
    //   76: invokestatic 69	com/flurry/sdk/fo:a	(Lorg/xmlpull/v1/XmlPullParser;Lcom/flurry/sdk/fm$a;Ljava/util/List;)Lcom/flurry/sdk/fm;
    //   79: astore 4
    //   81: aload 4
    //   83: astore_2
    //   84: aload 4
    //   86: ifnull +45 -> 131
    //   89: aload 4
    //   91: astore_2
    //   92: aload_3
    //   93: astore_1
    //   94: aload 4
    //   96: invokevirtual 75	com/flurry/sdk/fm:c	()Z
    //   99: ifeq +32 -> 131
    //   102: aload 4
    //   104: astore_2
    //   105: aload_3
    //   106: astore_1
    //   107: aload 4
    //   109: invokevirtual 79	com/flurry/sdk/fm:f	()Ljava/lang/String;
    //   112: ifnonnull +19 -> 131
    //   115: aload_3
    //   116: astore_1
    //   117: new 61	com/flurry/sdk/fm$a
    //   120: dup
    //   121: invokespecial 63	com/flurry/sdk/fm$a:<init>	()V
    //   124: invokevirtual 82	com/flurry/sdk/fm$a:a	()Lcom/flurry/sdk/fm$a;
    //   127: invokevirtual 85	com/flurry/sdk/fm$a:b	()Lcom/flurry/sdk/fm;
    //   130: astore_2
    //   131: aload_3
    //   132: invokestatic 90	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   135: aload_2
    //   136: astore_0
    //   137: aload_0
    //   138: areturn
    //   139: astore 4
    //   141: aconst_null
    //   142: astore_2
    //   143: aload_2
    //   144: astore_1
    //   145: invokestatic 93	com/flurry/sdk/fo:a	()Lcom/flurry/sdk/fo$a;
    //   148: getstatic 96	com/flurry/sdk/fo$a:d	Lcom/flurry/sdk/fo$a;
    //   151: invokevirtual 100	com/flurry/sdk/fo$a:equals	(Ljava/lang/Object;)Z
    //   154: ifeq +55 -> 209
    //   157: aload_2
    //   158: astore_1
    //   159: iconst_3
    //   160: ldc 102
    //   162: new 104	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 105	java/lang/StringBuilder:<init>	()V
    //   169: ldc 107
    //   171: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_0
    //   175: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: aload 4
    //   183: invokestatic 119	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   186: aload_2
    //   187: astore_1
    //   188: new 61	com/flurry/sdk/fm$a
    //   191: dup
    //   192: invokespecial 63	com/flurry/sdk/fm$a:<init>	()V
    //   195: invokevirtual 82	com/flurry/sdk/fm$a:a	()Lcom/flurry/sdk/fm$a;
    //   198: invokevirtual 85	com/flurry/sdk/fm$a:b	()Lcom/flurry/sdk/fm;
    //   201: astore_0
    //   202: aload_2
    //   203: invokestatic 90	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   206: goto -69 -> 137
    //   209: aload_2
    //   210: astore_1
    //   211: iconst_3
    //   212: ldc 102
    //   214: ldc 121
    //   216: invokestatic 124	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   219: aconst_null
    //   220: astore_0
    //   221: goto -19 -> 202
    //   224: astore_0
    //   225: aconst_null
    //   226: astore_1
    //   227: aload_1
    //   228: invokestatic 90	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   231: aload_0
    //   232: athrow
    //   233: astore_0
    //   234: goto -7 -> 227
    //   237: astore 4
    //   239: aload_3
    //   240: astore_2
    //   241: goto -98 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	paramString	String
    //   25	203	1	localObject1	Object
    //   29	212	2	localObject2	Object
    //   23	217	3	localStringReader	java.io.StringReader
    //   79	29	4	localfm	fm
    //   139	43	4	localException1	Exception
    //   237	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   15	24	139	java/lang/Exception
    //   15	24	224	finally
    //   26	30	233	finally
    //   32	41	233	finally
    //   43	50	233	finally
    //   52	59	233	finally
    //   61	81	233	finally
    //   94	102	233	finally
    //   107	115	233	finally
    //   117	131	233	finally
    //   145	157	233	finally
    //   159	186	233	finally
    //   188	202	233	finally
    //   211	219	233	finally
    //   26	30	237	java/lang/Exception
    //   32	41	237	java/lang/Exception
    //   43	50	237	java/lang/Exception
    //   52	59	237	java/lang/Exception
    //   61	81	237	java/lang/Exception
    //   94	102	237	java/lang/Exception
    //   107	115	237	java/lang/Exception
    //   117	131	237	java/lang/Exception
  }
  
  private static fm a(XmlPullParser paramXmlPullParser, fm.a parama, List<fu> paramList)
  {
    paramXmlPullParser.require(2, a, "VAST");
    a(fo.a.b);
    int i = c(paramXmlPullParser);
    if (a(i)) {
      parama.a(i);
    }
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2) {
        if (paramXmlPullParser.getName().equals("Ad"))
        {
          paramList.add(a(paramXmlPullParser, new fu.a()));
          continue;
          a(fo.a.d);
          throw new IllegalArgumentException();
        }
        else
        {
          b(paramXmlPullParser);
        }
      }
    }
    parama.a(paramList);
    parama.a(a(paramList));
    if (!a(paramList)) {
      a(fo.a.a);
    }
    for (;;)
    {
      return parama.b();
      a(fo.a.c);
    }
  }
  
  private static fo.a a()
  {
    return b;
  }
  
  private static fu a(XmlPullParser paramXmlPullParser, fu.a parama)
  {
    paramXmlPullParser.require(2, a, "Ad");
    parama.a(paramXmlPullParser.getAttributeValue(a, "id"));
    try
    {
      String str = paramXmlPullParser.getAttributeValue(a, "sequence");
      if (!TextUtils.isEmpty(str)) {
        parama.a(Integer.parseInt(str));
      }
      while (paramXmlPullParser.next() != 3) {
        if (paramXmlPullParser.getEventType() == 2)
        {
          str = paramXmlPullParser.getName();
          i = -1;
          switch (str.hashCode())
          {
          default: 
            switch (i)
            {
            default: 
              b(paramXmlPullParser);
            }
            break;
          }
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        int i;
        kg.a(3, "VASTXmlParser", "Could not identify Ad Sequence");
        continue;
        if (localNumberFormatException.equals("InLine"))
        {
          i = 0;
          continue;
          if (localNumberFormatException.equals("Wrapper"))
          {
            i = 1;
            continue;
            parama.a(a(paramXmlPullParser, new fw.a(), new fv.a(), new ArrayList(), new ArrayList()));
            continue;
            parama.a(a(paramXmlPullParser, new fw.a(), new fv.a(), new ArrayList(), new ArrayList(), new ArrayList()));
          }
        }
      }
    }
    return parama.a();
  }
  
  private static fw a(XmlPullParser paramXmlPullParser, fw.a parama, fv.a parama1, List<String> paramList1, List<String> paramList2)
  {
    parama.a(fp.b);
    paramXmlPullParser.require(2, a, "InLine");
    label20:
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2)
      {
        String str = paramXmlPullParser.getName();
        int i = -1;
        switch (str.hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            b(paramXmlPullParser);
            break label20;
            if (str.equals("Creatives"))
            {
              i = 0;
              continue;
              if (str.equals("AdSystem"))
              {
                i = 1;
                continue;
                if (str.equals("AdTitle"))
                {
                  i = 2;
                  continue;
                  if (str.equals("Impression"))
                  {
                    i = 3;
                    continue;
                    if (str.equals("Error")) {
                      i = 4;
                    }
                  }
                }
              }
            }
            break;
          }
        }
        parama.d(a(paramXmlPullParser, new ArrayList()));
        continue;
        parama1.a(paramXmlPullParser.getAttributeValue(a, "version"));
        parama1.b(a(paramXmlPullParser));
        parama.a(parama1.a());
        continue;
        parama.a(a(paramXmlPullParser));
        continue;
        a(paramList1, a(paramXmlPullParser));
        continue;
        a(paramList2, a(paramXmlPullParser));
      }
    }
    parama.b(paramList1);
    parama.c(paramList2);
    return parama.a();
  }
  
  private static fw a(XmlPullParser paramXmlPullParser, fw.a parama, fv.a parama1, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    parama.a(fp.c);
    paramXmlPullParser.require(2, a, "Wrapper");
    label20:
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2)
      {
        String str = paramXmlPullParser.getName();
        int i = -1;
        switch (str.hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            b(paramXmlPullParser);
            break label20;
            if (str.equals("Creatives"))
            {
              i = 0;
              continue;
              if (str.equals("AdSystem"))
              {
                i = 1;
                continue;
                if (str.equals("VASTAdTagURI"))
                {
                  i = 2;
                  continue;
                  if (str.equals("Impression"))
                  {
                    i = 3;
                    continue;
                    if (str.equals("Error")) {
                      i = 4;
                    }
                  }
                }
              }
            }
            break;
          }
        }
        parama.d(a(paramXmlPullParser, new ArrayList()));
        continue;
        parama1.a(paramXmlPullParser.getAttributeValue(a, "version"));
        parama1.b(a(paramXmlPullParser));
        parama.a(parama1.a());
        continue;
        a(paramList1, a(paramXmlPullParser));
        continue;
        a(paramList2, a(paramXmlPullParser));
        continue;
        a(paramList3, a(paramXmlPullParser));
      }
    }
    parama.a(paramList1);
    parama.b(paramList2);
    parama.c(paramList3);
    return parama.a();
  }
  
  private static fx a(XmlPullParser paramXmlPullParser, fx.a parama)
  {
    paramXmlPullParser.require(2, a, "Creative");
    parama.a(paramXmlPullParser.getAttributeValue(a, "id"));
    String str = paramXmlPullParser.getAttributeValue(a, "sequence");
    if (str != null) {}
    try
    {
      parama.a(Math.round(Float.parseFloat(str)));
      for (;;)
      {
        if (paramXmlPullParser.next() == 3) {
          break label139;
        }
        if (paramXmlPullParser.getEventType() == 2)
        {
          if (!paramXmlPullParser.getName().equals("Linear")) {
            break;
          }
          parama.a(fq.b);
          parama.a(a(paramXmlPullParser, new fy.a()));
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        kg.a(3, "VASTXmlParser", "Could not identify Creative sequence");
        continue;
        b(paramXmlPullParser);
      }
    }
    label139:
    return parama.a();
  }
  
  private static fy a(XmlPullParser paramXmlPullParser, fy.a parama)
  {
    paramXmlPullParser.require(2, a, "Linear");
    Object localObject = paramXmlPullParser.getAttributeValue(a, "skipoffset");
    if (localObject != null) {
      parama.b(fn.a((String)localObject));
    }
    label39:
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2)
      {
        localObject = paramXmlPullParser.getName();
        int i = -1;
        switch (((String)localObject).hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            b(paramXmlPullParser);
            break label39;
            if (((String)localObject).equals("Duration"))
            {
              i = 0;
              continue;
              if (((String)localObject).equals("TrackingEvents"))
              {
                i = 1;
                continue;
                if (((String)localObject).equals("VideoClicks"))
                {
                  i = 2;
                  continue;
                  if (((String)localObject).equals("MediaFiles")) {
                    i = 3;
                  }
                }
              }
            }
            break;
          }
        }
        parama.a(fn.a(a(paramXmlPullParser)));
        continue;
        parama.a(b(paramXmlPullParser, new jx()));
        continue;
        parama.b(a(paramXmlPullParser, new jx()));
        continue;
        localObject = fn.a(b(paramXmlPullParser, new ArrayList()));
        if (localObject != null) {
          parama.a((fz)localObject);
        }
      }
    }
    return parama.a();
  }
  
  private static fz a(XmlPullParser paramXmlPullParser, fz.a parama)
  {
    paramXmlPullParser.require(2, a, "MediaFile");
    parama.a(paramXmlPullParser.getAttributeValue(a, "id"));
    parama.d(paramXmlPullParser.getAttributeValue(a, "type"));
    parama.b(paramXmlPullParser.getAttributeValue(a, "apiFramework"));
    parama.a(fr.a(paramXmlPullParser.getAttributeValue(a, "delivery")));
    try
    {
      parama.b(Integer.parseInt(paramXmlPullParser.getAttributeValue(a, "height")));
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      try
      {
        parama.c(Integer.parseInt(paramXmlPullParser.getAttributeValue(a, "width")));
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        try
        {
          for (;;)
          {
            parama.a(Integer.parseInt(paramXmlPullParser.getAttributeValue(a, "bitrate")));
            parama.b(Boolean.parseBoolean(paramXmlPullParser.getAttributeValue(a, "scalable")));
            parama.a(Boolean.parseBoolean(paramXmlPullParser.getAttributeValue(a, "maintainAspectRatio")));
            parama.c(a(paramXmlPullParser));
            return parama.a();
            localNumberFormatException1 = localNumberFormatException1;
            kg.a(3, "VASTXmlParser", "Could not identify MediaFile height");
            continue;
            localNumberFormatException2 = localNumberFormatException2;
            kg.a(3, "VASTXmlParser", "Could not identify MediaFile width");
          }
        }
        catch (NumberFormatException localNumberFormatException3)
        {
          for (;;)
          {
            kg.a(3, "VASTXmlParser", "Could not identify MediaFile bitRate");
          }
        }
      }
    }
  }
  
  private static ga a(XmlPullParser paramXmlPullParser, ga.a parama)
  {
    paramXmlPullParser.require(2, a, "Tracking");
    parama.a(fs.a(paramXmlPullParser.getAttributeValue(a, "event")));
    parama.a(a(paramXmlPullParser));
    return parama.a();
  }
  
  private static jx<ft, String> a(XmlPullParser paramXmlPullParser, jx<ft, String> paramjx)
  {
    paramXmlPullParser.require(2, a, "VideoClicks");
    label13:
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2)
      {
        String str = paramXmlPullParser.getName();
        int i = -1;
        switch (str.hashCode())
        {
        }
        for (;;)
        {
          switch (i)
          {
          default: 
            b(paramXmlPullParser);
            break label13;
            if (str.equals("ClickThrough"))
            {
              i = 0;
              continue;
              if (str.equals("ClickTracking"))
              {
                i = 1;
                continue;
                if (str.equals("CustomClick")) {
                  i = 2;
                }
              }
            }
            break;
          }
        }
        paramjx.a(ft.b, a(paramXmlPullParser));
        continue;
        paramjx.a(ft.c, a(paramXmlPullParser));
        continue;
        paramjx.a(ft.d, a(paramXmlPullParser));
      }
    }
    return paramjx;
  }
  
  private static String a(XmlPullParser paramXmlPullParser)
  {
    String str = null;
    if (paramXmlPullParser.next() == 4)
    {
      str = paramXmlPullParser.getText().trim();
      paramXmlPullParser.nextTag();
    }
    return str;
  }
  
  private static List<fx> a(XmlPullParser paramXmlPullParser, List<fx> paramList)
  {
    paramXmlPullParser.require(2, a, "Creatives");
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2) {
        if (paramXmlPullParser.getName().equals("Creative")) {
          paramList.add(a(paramXmlPullParser, new fx.a()));
        } else {
          b(paramXmlPullParser);
        }
      }
    }
    return paramList;
  }
  
  private static void a(fo.a parama)
  {
    kg.a(3, "VASTXmlParser", "Setting VAST parse state as: " + parama.name());
    b = parama;
  }
  
  private static void a(List<String> paramList, String paramString)
  {
    if (paramList == null) {}
    while (TextUtils.isEmpty(paramString)) {
      return;
    }
    paramList.add(paramString);
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt >= 1) && (paramInt <= 3);
  }
  
  public static boolean a(List<fu> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return false;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      fw localfw = ((fu)paramList.next()).c();
      if ((localfw == null) || (!fp.b.equals(localfw.a()))) {
        return false;
      }
    }
    return true;
  }
  
  private static jx<fs, String> b(XmlPullParser paramXmlPullParser, jx<fs, String> paramjx)
  {
    paramXmlPullParser.require(2, a, "TrackingEvents");
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2) {
        if (paramXmlPullParser.getName().equals("Tracking"))
        {
          ga localga = a(paramXmlPullParser, new ga.a());
          if (!TextUtils.isEmpty(localga.b())) {
            paramjx.a(localga.a(), localga.b());
          }
        }
        else
        {
          b(paramXmlPullParser);
        }
      }
    }
    return paramjx;
  }
  
  private static List<fz> b(XmlPullParser paramXmlPullParser, List<fz> paramList)
  {
    paramXmlPullParser.require(2, a, "MediaFiles");
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2) {
        if (paramXmlPullParser.getName().equals("MediaFile")) {
          paramList.add(a(paramXmlPullParser, new fz.a()));
        } else {
          b(paramXmlPullParser);
        }
      }
    }
    return paramList;
  }
  
  private static void b(XmlPullParser paramXmlPullParser)
  {
    if (paramXmlPullParser.getEventType() != 2) {
      throw new IllegalStateException();
    }
    int i = 1;
    while (i != 0) {
      switch (paramXmlPullParser.next())
      {
      default: 
        break;
      case 2: 
        i += 1;
        break;
      case 3: 
        i -= 1;
      }
    }
  }
  
  private static int c(XmlPullParser paramXmlPullParser)
  {
    int j = Integer.MIN_VALUE;
    paramXmlPullParser = paramXmlPullParser.getAttributeValue(a, "version");
    kg.a(3, "VASTXmlParser", "Version" + paramXmlPullParser);
    int i = j;
    if (!TextUtils.isEmpty(paramXmlPullParser))
    {
      paramXmlPullParser = paramXmlPullParser.split("\\.");
      i = j;
      if (paramXmlPullParser.length > 0)
      {
        i = j;
        if (TextUtils.isEmpty(paramXmlPullParser[0])) {}
      }
    }
    try
    {
      i = Integer.parseInt(paramXmlPullParser[0]);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      kg.a(3, "VASTXmlParser", "Could not detect VAST version " + paramXmlPullParser[0]);
    }
    return Integer.MIN_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */