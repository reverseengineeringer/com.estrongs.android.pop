package com.baidu.scenery;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class TestGetJson
{
  public static final String FILE_NAME_CARD = "card_json.txt";
  public static final String FILE_NAME_SCENERY = "scenery_json.txt";
  
  /* Error */
  private static void copyAssertFile(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 24	java/io/File
    //   6: dup
    //   7: aload_2
    //   8: invokespecial 27	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: invokevirtual 31	java/io/File:exists	()Z
    //   16: ifeq +13 -> 29
    //   19: aload_2
    //   20: invokevirtual 35	java/io/File:length	()J
    //   23: lconst_0
    //   24: lcmp
    //   25: ifeq +4 -> 29
    //   28: return
    //   29: aload_0
    //   30: invokevirtual 41	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   33: aload_1
    //   34: invokevirtual 47	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   37: astore_0
    //   38: new 49	java/io/FileOutputStream
    //   41: dup
    //   42: aload_2
    //   43: invokespecial 52	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   46: astore_2
    //   47: sipush 1024
    //   50: newarray <illegal type>
    //   52: astore_1
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual 58	java/io/InputStream:read	([B)I
    //   58: istore_3
    //   59: iload_3
    //   60: ifle +49 -> 109
    //   63: aload_2
    //   64: aload_1
    //   65: iconst_0
    //   66: iload_3
    //   67: invokevirtual 64	java/io/OutputStream:write	([BII)V
    //   70: goto -17 -> 53
    //   73: astore 4
    //   75: aload_0
    //   76: astore_1
    //   77: aload_2
    //   78: astore_0
    //   79: aload 4
    //   81: astore_2
    //   82: aload_2
    //   83: invokevirtual 67	java/lang/Exception:printStackTrace	()V
    //   86: aload_1
    //   87: ifnull +7 -> 94
    //   90: aload_1
    //   91: invokevirtual 70	java/io/InputStream:close	()V
    //   94: aload_0
    //   95: ifnull -67 -> 28
    //   98: aload_0
    //   99: invokevirtual 71	java/io/OutputStream:close	()V
    //   102: return
    //   103: astore_0
    //   104: aload_0
    //   105: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   108: return
    //   109: aload_2
    //   110: invokevirtual 75	java/io/OutputStream:flush	()V
    //   113: aload_0
    //   114: ifnull +7 -> 121
    //   117: aload_0
    //   118: invokevirtual 70	java/io/InputStream:close	()V
    //   121: aload_2
    //   122: ifnull -94 -> 28
    //   125: aload_2
    //   126: invokevirtual 71	java/io/OutputStream:close	()V
    //   129: return
    //   130: astore_0
    //   131: aload_0
    //   132: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   135: return
    //   136: astore_0
    //   137: aload_0
    //   138: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   141: goto -20 -> 121
    //   144: astore_1
    //   145: aload_1
    //   146: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   149: goto -55 -> 94
    //   152: astore_1
    //   153: aconst_null
    //   154: astore_2
    //   155: aconst_null
    //   156: astore_0
    //   157: aload_0
    //   158: ifnull +7 -> 165
    //   161: aload_0
    //   162: invokevirtual 70	java/io/InputStream:close	()V
    //   165: aload_2
    //   166: ifnull +7 -> 173
    //   169: aload_2
    //   170: invokevirtual 71	java/io/OutputStream:close	()V
    //   173: aload_1
    //   174: athrow
    //   175: astore_0
    //   176: aload_0
    //   177: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   180: goto -15 -> 165
    //   183: astore_0
    //   184: aload_0
    //   185: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   188: goto -15 -> 173
    //   191: astore_1
    //   192: aconst_null
    //   193: astore_2
    //   194: goto -37 -> 157
    //   197: astore_1
    //   198: goto -41 -> 157
    //   201: astore_2
    //   202: aload_1
    //   203: astore 4
    //   205: aload_2
    //   206: astore_1
    //   207: aload_0
    //   208: astore_2
    //   209: aload 4
    //   211: astore_0
    //   212: goto -55 -> 157
    //   215: astore_2
    //   216: aconst_null
    //   217: astore_0
    //   218: aload 4
    //   220: astore_1
    //   221: goto -139 -> 82
    //   224: astore_2
    //   225: aconst_null
    //   226: astore 4
    //   228: aload_0
    //   229: astore_1
    //   230: aload 4
    //   232: astore_0
    //   233: goto -151 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	paramContext	Context
    //   0	236	1	paramString1	String
    //   0	236	2	paramString2	String
    //   58	9	3	i	int
    //   1	1	4	localObject	Object
    //   73	7	4	localException	Exception
    //   203	28	4	str	String
    // Exception table:
    //   from	to	target	type
    //   47	53	73	java/lang/Exception
    //   53	59	73	java/lang/Exception
    //   63	70	73	java/lang/Exception
    //   109	113	73	java/lang/Exception
    //   98	102	103	java/io/IOException
    //   125	129	130	java/io/IOException
    //   117	121	136	java/io/IOException
    //   90	94	144	java/io/IOException
    //   29	38	152	finally
    //   161	165	175	java/io/IOException
    //   169	173	183	java/io/IOException
    //   38	47	191	finally
    //   47	53	197	finally
    //   53	59	197	finally
    //   63	70	197	finally
    //   109	113	197	finally
    //   82	86	201	finally
    //   29	38	215	java/lang/Exception
    //   38	47	224	java/lang/Exception
  }
  
  private static String getAssertContent(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = null;
    Context localContext = null;
    try
    {
      paramContext = paramContext.getAssets().open(paramString);
      localContext = paramContext;
      localObject = paramContext;
      paramString = new BufferedReader(new InputStreamReader(paramContext));
      for (;;)
      {
        localContext = paramContext;
        localObject = paramContext;
        String str = paramString.readLine();
        if (str == null) {
          break;
        }
        localContext = paramContext;
        localObject = paramContext;
        if (!TextUtils.isEmpty(str))
        {
          localContext = paramContext;
          localObject = paramContext;
          localStringBuilder.append(str);
        }
      }
      try
      {
        ((InputStream)localObject).close();
        throw paramContext;
      }
      catch (IOException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
    }
    catch (Exception paramContext)
    {
      localObject = localContext;
      paramContext.printStackTrace();
      if (localContext != null) {}
      try
      {
        localContext.close();
        for (;;)
        {
          return localStringBuilder.toString();
          if (paramContext != null) {
            try
            {
              paramContext.close();
            }
            catch (IOException paramContext)
            {
              paramContext.printStackTrace();
            }
          }
        }
      }
      catch (IOException paramContext)
      {
        for (;;)
        {
          paramContext.printStackTrace();
        }
      }
    }
    finally
    {
      if (localObject == null) {}
    }
  }
  
  /* Error */
  private static String getFileContent(String paramString)
  {
    // Byte code:
    //   0: new 79	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_1
    //   10: new 111	java/io/FileInputStream
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 112	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   18: astore_0
    //   19: new 82	java/io/BufferedReader
    //   22: dup
    //   23: new 84	java/io/InputStreamReader
    //   26: dup
    //   27: aload_0
    //   28: invokespecial 87	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   31: invokespecial 90	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 94	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   39: astore_3
    //   40: aload_3
    //   41: ifnull +33 -> 74
    //   44: aload_3
    //   45: invokestatic 100	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   48: ifne -13 -> 35
    //   51: aload_2
    //   52: aload_3
    //   53: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: goto -22 -> 35
    //   60: astore_1
    //   61: aload_0
    //   62: ifnull +7 -> 69
    //   65: aload_0
    //   66: invokevirtual 70	java/io/InputStream:close	()V
    //   69: aload_2
    //   70: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: areturn
    //   74: aload_0
    //   75: ifnull -6 -> 69
    //   78: aload_0
    //   79: invokevirtual 70	java/io/InputStream:close	()V
    //   82: goto -13 -> 69
    //   85: astore_0
    //   86: goto -17 -> 69
    //   89: astore_0
    //   90: aload_1
    //   91: ifnull +7 -> 98
    //   94: aload_1
    //   95: invokevirtual 70	java/io/InputStream:close	()V
    //   98: aload_0
    //   99: athrow
    //   100: astore_0
    //   101: goto -32 -> 69
    //   104: astore_1
    //   105: goto -7 -> 98
    //   108: astore_2
    //   109: aload_0
    //   110: astore_1
    //   111: aload_2
    //   112: astore_0
    //   113: goto -23 -> 90
    //   116: astore_0
    //   117: aconst_null
    //   118: astore_0
    //   119: goto -58 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	paramString	String
    //   9	27	1	localBufferedReader	BufferedReader
    //   60	35	1	localIOException1	IOException
    //   104	1	1	localIOException2	IOException
    //   110	1	1	str1	String
    //   7	63	2	localStringBuilder	StringBuilder
    //   108	4	2	localObject	Object
    //   39	14	3	str2	String
    // Exception table:
    //   from	to	target	type
    //   19	35	60	java/io/IOException
    //   35	40	60	java/io/IOException
    //   44	57	60	java/io/IOException
    //   78	82	85	java/io/IOException
    //   10	19	89	finally
    //   65	69	100	java/io/IOException
    //   94	98	104	java/io/IOException
    //   19	35	108	finally
    //   35	40	108	finally
    //   44	57	108	finally
    //   10	19	116	java/io/IOException
  }
  
  public static String getJsonBody(Context paramContext, String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory(), paramContext.getPackageName());
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    if (!localFile.exists()) {
      return getAssertContent(paramContext, paramString);
    }
    localFile = new File(localFile, paramString);
    copyAssertFile(paramContext, paramString, localFile.getAbsolutePath());
    return getFileContent(localFile.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.TestGetJson
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */