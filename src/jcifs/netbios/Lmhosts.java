package jcifs.netbios;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Hashtable;
import jcifs.Config;
import jcifs.smb.SmbFileInputStream;
import jcifs.util.LogStream;

public class Lmhosts
{
  private static final String FILENAME = Config.getProperty("jcifs.netbios.lmhosts");
  private static final Hashtable TAB = new Hashtable();
  private static int alt;
  private static long lastModified = 1L;
  private static LogStream log = LogStream.getInstance();
  
  public static NbtAddress getByName(String paramString)
  {
    try
    {
      paramString = getByName(new Name(paramString, 32, null));
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  static NbtAddress getByName(Name paramName)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore_3
    //   5: getstatic 26	jcifs/netbios/Lmhosts:FILENAME	Ljava/lang/String;
    //   8: ifnull +159 -> 167
    //   11: new 61	java/io/File
    //   14: dup
    //   15: getstatic 26	jcifs/netbios/Lmhosts:FILENAME	Ljava/lang/String;
    //   18: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: astore 4
    //   23: aload 4
    //   25: invokevirtual 67	java/io/File:lastModified	()J
    //   28: lstore_1
    //   29: lload_1
    //   30: getstatic 35	jcifs/netbios/Lmhosts:lastModified	J
    //   33: lcmp
    //   34: ifle +29 -> 63
    //   37: lload_1
    //   38: putstatic 35	jcifs/netbios/Lmhosts:lastModified	J
    //   41: getstatic 33	jcifs/netbios/Lmhosts:TAB	Ljava/util/Hashtable;
    //   44: invokevirtual 70	java/util/Hashtable:clear	()V
    //   47: iconst_0
    //   48: putstatic 72	jcifs/netbios/Lmhosts:alt	I
    //   51: new 74	java/io/FileReader
    //   54: dup
    //   55: aload 4
    //   57: invokespecial 77	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   60: invokestatic 81	jcifs/netbios/Lmhosts:populate	(Ljava/io/Reader;)V
    //   63: getstatic 33	jcifs/netbios/Lmhosts:TAB	Ljava/util/Hashtable;
    //   66: aload_0
    //   67: invokevirtual 85	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   70: checkcast 87	jcifs/netbios/NbtAddress
    //   73: astore_0
    //   74: ldc 2
    //   76: monitorexit
    //   77: aload_0
    //   78: areturn
    //   79: astore 4
    //   81: getstatic 43	jcifs/netbios/Lmhosts:log	Ljcifs/util/LogStream;
    //   84: astore_0
    //   85: aload_3
    //   86: astore_0
    //   87: getstatic 90	jcifs/util/LogStream:level	I
    //   90: iconst_1
    //   91: if_icmple -17 -> 74
    //   94: getstatic 43	jcifs/netbios/Lmhosts:log	Ljcifs/util/LogStream;
    //   97: new 92	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   104: ldc 95
    //   106: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: getstatic 26	jcifs/netbios/Lmhosts:FILENAME	Ljava/lang/String;
    //   112: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokevirtual 106	jcifs/util/LogStream:println	(Ljava/lang/String;)V
    //   121: aload 4
    //   123: getstatic 43	jcifs/netbios/Lmhosts:log	Ljcifs/util/LogStream;
    //   126: invokevirtual 110	java/io/FileNotFoundException:printStackTrace	(Ljava/io/PrintStream;)V
    //   129: aload_3
    //   130: astore_0
    //   131: goto -57 -> 74
    //   134: astore_0
    //   135: ldc 2
    //   137: monitorexit
    //   138: aload_0
    //   139: athrow
    //   140: astore 4
    //   142: getstatic 43	jcifs/netbios/Lmhosts:log	Ljcifs/util/LogStream;
    //   145: astore_0
    //   146: aload_3
    //   147: astore_0
    //   148: getstatic 90	jcifs/util/LogStream:level	I
    //   151: ifle -77 -> 74
    //   154: aload 4
    //   156: getstatic 43	jcifs/netbios/Lmhosts:log	Ljcifs/util/LogStream;
    //   159: invokevirtual 111	java/io/IOException:printStackTrace	(Ljava/io/PrintStream;)V
    //   162: aload_3
    //   163: astore_0
    //   164: goto -90 -> 74
    //   167: aconst_null
    //   168: astore_0
    //   169: goto -95 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	paramName	Name
    //   28	10	1	l	long
    //   4	159	3	localObject	Object
    //   21	35	4	localFile	java.io.File
    //   79	43	4	localFileNotFoundException	java.io.FileNotFoundException
    //   140	15	4	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   5	63	79	java/io/FileNotFoundException
    //   63	74	79	java/io/FileNotFoundException
    //   5	63	134	finally
    //   63	74	134	finally
    //   81	85	134	finally
    //   87	129	134	finally
    //   142	146	134	finally
    //   148	162	134	finally
    //   5	63	140	java/io/IOException
    //   63	74	140	java/io/IOException
  }
  
  static void populate(Reader paramReader)
  {
    paramReader = new BufferedReader(paramReader);
    Object localObject1;
    label281:
    do
    {
      do
      {
        for (;;)
        {
          localObject1 = paramReader.readLine();
          if (localObject1 == null) {
            break label485;
          }
          localObject1 = ((String)localObject1).toUpperCase().trim();
          if (((String)localObject1).length() != 0)
          {
            if (((String)localObject1).charAt(0) != '#') {
              break label281;
            }
            if (((String)localObject1).startsWith("#INCLUDE "))
            {
              localObject1 = ((String)localObject1).substring(((String)localObject1).indexOf('\\'));
              localObject1 = "smb:" + ((String)localObject1).replace('\\', '/');
              if (alt > 0) {
                try
                {
                  populate(new InputStreamReader(new SmbFileInputStream((String)localObject1)));
                  alt -= 1;
                  do
                  {
                    localObject1 = paramReader.readLine();
                    if (localObject1 == null) {
                      break;
                    }
                  } while (!((String)localObject1).toUpperCase().trim().startsWith("#END_ALTERNATE"));
                }
                catch (IOException localIOException)
                {
                  log.println("lmhosts URL: " + (String)localObject1);
                  localIOException.printStackTrace(log);
                }
              } else {
                populate(new InputStreamReader(new SmbFileInputStream((String)localObject1)));
              }
            }
            else
            {
              if (!((String)localObject1).startsWith("#BEGIN_ALTERNATE")) {
                break;
              }
              alt += 1;
            }
          }
        }
      } while ((!((String)localObject1).startsWith("#END_ALTERNATE")) || (alt <= 0));
      alt -= 1;
      throw new IOException("no lmhosts alternate includes loaded");
    } while (!Character.isDigit(((String)localObject1).charAt(0)));
    Object localObject2 = ((String)localObject1).toCharArray();
    int j = 46;
    int i = 0;
    int k = 0;
    while ((i < localObject2.length) && (j == 46))
    {
      for (int m = 0; i < localObject2.length; m = m * 10 + j - 48)
      {
        j = localObject2[i];
        if ((j < 48) || (j > 57)) {
          break;
        }
        i += 1;
      }
      k = (k << 8) + m;
      i += 1;
    }
    for (;;)
    {
      if ((i < localObject2.length) && (Character.isWhitespace(localObject2[i])))
      {
        i += 1;
      }
      else
      {
        j = i;
        while ((j < localObject2.length) && (!Character.isWhitespace(localObject2[j]))) {
          j += 1;
        }
        localObject1 = new Name(((String)localObject1).substring(i, j), 32, null);
        localObject2 = new NbtAddress((Name)localObject1, k, false, 0, false, false, true, true, NbtAddress.UNKNOWN_MAC_ADDRESS);
        TAB.put(localObject1, localObject2);
        break;
        label485:
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.Lmhosts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */