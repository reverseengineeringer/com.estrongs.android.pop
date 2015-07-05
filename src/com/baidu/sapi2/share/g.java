package com.baidu.sapi2.share;

import android.content.Context;
import java.io.File;
import org.json.JSONObject;

final class g
{
  private Context a;
  private JSONObject b;
  private File c;
  private boolean d = false;
  
  public g(Context paramContext)
  {
    a = paramContext;
    b();
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 21	com/baidu/sapi2/share/g:a	Landroid/content/Context;
    //   12: invokevirtual 32	android/content/Context:getFilesDir	()Ljava/io/File;
    //   15: astore_2
    //   16: aload_2
    //   17: ifnull +411 -> 428
    //   20: new 34	java/io/File
    //   23: dup
    //   24: new 36	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   31: aload_2
    //   32: invokevirtual 41	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   35: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 47
    //   40: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc 49
    //   45: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokespecial 55	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: astore_3
    //   55: aload_0
    //   56: new 34	java/io/File
    //   59: dup
    //   60: new 36	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   67: aload_2
    //   68: invokevirtual 41	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   71: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc 47
    //   76: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: ldc 57
    //   81: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokespecial 55	java/io/File:<init>	(Ljava/lang/String;)V
    //   90: putfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   93: aload_3
    //   94: ifnull +116 -> 210
    //   97: aload_3
    //   98: invokevirtual 63	java/io/File:exists	()Z
    //   101: ifeq +109 -> 210
    //   104: aload_0
    //   105: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   108: ifnull +102 -> 210
    //   111: aload_0
    //   112: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   115: invokevirtual 63	java/io/File:exists	()Z
    //   118: ifeq +92 -> 210
    //   121: aload_3
    //   122: invokevirtual 66	java/io/File:delete	()Z
    //   125: pop
    //   126: aload_0
    //   127: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   130: ifnull +252 -> 382
    //   133: aload_0
    //   134: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   137: invokevirtual 63	java/io/File:exists	()Z
    //   140: ifeq +242 -> 382
    //   143: aload 5
    //   145: astore_1
    //   146: new 68	java/io/FileInputStream
    //   149: dup
    //   150: aload_0
    //   151: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   154: invokespecial 71	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   157: astore_2
    //   158: aload_0
    //   159: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   162: invokevirtual 75	java/io/File:length	()J
    //   165: l2i
    //   166: newarray <illegal type>
    //   168: astore_1
    //   169: aload_2
    //   170: aload_1
    //   171: invokevirtual 79	java/io/FileInputStream:read	([B)I
    //   174: pop
    //   175: aload_0
    //   176: new 81	org/json/JSONObject
    //   179: dup
    //   180: aload_0
    //   181: getfield 21	com/baidu/sapi2/share/g:a	Landroid/content/Context;
    //   184: new 83	java/lang/String
    //   187: dup
    //   188: aload_1
    //   189: invokespecial 86	java/lang/String:<init>	([B)V
    //   192: invokestatic 91	com/baidu/sapi2/share/e:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   195: invokespecial 92	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   198: putfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   201: aload_2
    //   202: ifnull +7 -> 209
    //   205: aload_2
    //   206: invokevirtual 97	java/io/FileInputStream:close	()V
    //   209: return
    //   210: aload_3
    //   211: ifnull -85 -> 126
    //   214: aload_3
    //   215: invokevirtual 63	java/io/File:exists	()Z
    //   218: ifeq -92 -> 126
    //   221: new 68	java/io/FileInputStream
    //   224: dup
    //   225: aload_3
    //   226: invokespecial 71	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   229: astore_2
    //   230: aload_2
    //   231: astore_1
    //   232: aload_3
    //   233: invokevirtual 75	java/io/File:length	()J
    //   236: l2i
    //   237: newarray <illegal type>
    //   239: astore 6
    //   241: aload_2
    //   242: astore_1
    //   243: aload_2
    //   244: aload 6
    //   246: invokevirtual 79	java/io/FileInputStream:read	([B)I
    //   249: pop
    //   250: aload_2
    //   251: astore_1
    //   252: aload_0
    //   253: new 81	org/json/JSONObject
    //   256: dup
    //   257: new 83	java/lang/String
    //   260: dup
    //   261: aload 6
    //   263: invokespecial 86	java/lang/String:<init>	([B)V
    //   266: invokespecial 92	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   269: putfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   272: aload_2
    //   273: ifnull +7 -> 280
    //   276: aload_2
    //   277: invokevirtual 97	java/io/FileInputStream:close	()V
    //   280: aload_0
    //   281: invokevirtual 99	com/baidu/sapi2/share/g:a	()Z
    //   284: pop
    //   285: aload_3
    //   286: invokevirtual 66	java/io/File:delete	()Z
    //   289: pop
    //   290: goto -164 -> 126
    //   293: astore_1
    //   294: aconst_null
    //   295: astore_2
    //   296: aload_2
    //   297: astore_1
    //   298: aload_0
    //   299: new 81	org/json/JSONObject
    //   302: dup
    //   303: invokespecial 100	org/json/JSONObject:<init>	()V
    //   306: putfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   309: aload_2
    //   310: ifnull -30 -> 280
    //   313: aload_2
    //   314: invokevirtual 97	java/io/FileInputStream:close	()V
    //   317: goto -37 -> 280
    //   320: astore_1
    //   321: goto -41 -> 280
    //   324: astore_3
    //   325: aload_1
    //   326: astore_2
    //   327: aload_3
    //   328: astore_1
    //   329: aload_2
    //   330: ifnull +7 -> 337
    //   333: aload_2
    //   334: invokevirtual 97	java/io/FileInputStream:close	()V
    //   337: aload_1
    //   338: athrow
    //   339: astore_1
    //   340: aload 4
    //   342: astore_2
    //   343: aload_2
    //   344: astore_1
    //   345: aload_0
    //   346: new 81	org/json/JSONObject
    //   349: dup
    //   350: invokespecial 100	org/json/JSONObject:<init>	()V
    //   353: putfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   356: aload_2
    //   357: ifnull -148 -> 209
    //   360: aload_2
    //   361: invokevirtual 97	java/io/FileInputStream:close	()V
    //   364: return
    //   365: astore_1
    //   366: return
    //   367: astore_3
    //   368: aload_1
    //   369: astore_2
    //   370: aload_3
    //   371: astore_1
    //   372: aload_2
    //   373: ifnull +7 -> 380
    //   376: aload_2
    //   377: invokevirtual 97	java/io/FileInputStream:close	()V
    //   380: aload_1
    //   381: athrow
    //   382: aload_0
    //   383: new 81	org/json/JSONObject
    //   386: dup
    //   387: invokespecial 100	org/json/JSONObject:<init>	()V
    //   390: putfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   393: return
    //   394: astore_1
    //   395: goto -115 -> 280
    //   398: astore_2
    //   399: goto -62 -> 337
    //   402: astore_1
    //   403: return
    //   404: astore_2
    //   405: goto -25 -> 380
    //   408: astore_1
    //   409: goto -37 -> 372
    //   412: astore_1
    //   413: goto -70 -> 343
    //   416: astore_3
    //   417: aload_1
    //   418: astore_2
    //   419: aload_3
    //   420: astore_1
    //   421: goto -92 -> 329
    //   424: astore_1
    //   425: goto -129 -> 296
    //   428: aconst_null
    //   429: astore_3
    //   430: goto -337 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	433	0	this	g
    //   7	245	1	localObject1	Object
    //   293	1	1	localException1	Exception
    //   297	1	1	localObject2	Object
    //   320	6	1	localException2	Exception
    //   328	10	1	localObject3	Object
    //   339	1	1	localException3	Exception
    //   344	1	1	localObject4	Object
    //   365	4	1	localException4	Exception
    //   371	10	1	localObject5	Object
    //   394	1	1	localException5	Exception
    //   402	1	1	localException6	Exception
    //   408	1	1	localObject6	Object
    //   412	6	1	localException7	Exception
    //   420	1	1	localObject7	Object
    //   424	1	1	localException8	Exception
    //   15	362	2	localObject8	Object
    //   398	1	2	localException9	Exception
    //   404	1	2	localException10	Exception
    //   418	1	2	localException11	Exception
    //   54	232	3	localFile	File
    //   324	4	3	localObject9	Object
    //   367	4	3	localObject10	Object
    //   416	4	3	localObject11	Object
    //   429	1	3	localObject12	Object
    //   1	340	4	localObject13	Object
    //   4	140	5	localObject14	Object
    //   239	23	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   221	230	293	java/lang/Exception
    //   313	317	320	java/lang/Exception
    //   221	230	324	finally
    //   146	158	339	java/lang/Exception
    //   360	364	365	java/lang/Exception
    //   146	158	367	finally
    //   345	356	367	finally
    //   276	280	394	java/lang/Exception
    //   333	337	398	java/lang/Exception
    //   205	209	402	java/lang/Exception
    //   376	380	404	java/lang/Exception
    //   158	201	408	finally
    //   158	201	412	java/lang/Exception
    //   232	241	416	finally
    //   243	250	416	finally
    //   252	272	416	finally
    //   298	309	416	finally
    //   232	241	424	java/lang/Exception
    //   243	250	424	java/lang/Exception
    //   252	272	424	java/lang/Exception
  }
  
  public String a(String paramString)
  {
    return b.optString(paramString);
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	com/baidu/sapi2/share/g:d	Z
    //   4: ifne +5 -> 9
    //   7: iconst_1
    //   8: ireturn
    //   9: new 106	java/io/FileWriter
    //   12: dup
    //   13: aload_0
    //   14: getfield 59	com/baidu/sapi2/share/g:c	Ljava/io/File;
    //   17: invokespecial 107	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   20: astore_2
    //   21: aload_2
    //   22: astore_1
    //   23: aload_2
    //   24: aload_0
    //   25: getfield 21	com/baidu/sapi2/share/g:a	Landroid/content/Context;
    //   28: aload_0
    //   29: getfield 94	com/baidu/sapi2/share/g:b	Lorg/json/JSONObject;
    //   32: invokevirtual 108	org/json/JSONObject:toString	()Ljava/lang/String;
    //   35: invokestatic 110	com/baidu/sapi2/share/e:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   38: invokevirtual 113	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   41: aload_2
    //   42: astore_1
    //   43: aload_2
    //   44: invokevirtual 116	java/io/FileWriter:flush	()V
    //   47: aload_2
    //   48: astore_1
    //   49: aload_0
    //   50: iconst_0
    //   51: putfield 19	com/baidu/sapi2/share/g:d	Z
    //   54: aload_2
    //   55: ifnull -48 -> 7
    //   58: aload_2
    //   59: invokevirtual 117	java/io/FileWriter:close	()V
    //   62: iconst_1
    //   63: ireturn
    //   64: astore_1
    //   65: iconst_1
    //   66: ireturn
    //   67: astore_3
    //   68: aconst_null
    //   69: astore_2
    //   70: aload_2
    //   71: astore_1
    //   72: aload_3
    //   73: invokestatic 123	com/baidu/sapi2/utils/L:e	(Ljava/lang/Throwable;)V
    //   76: aload_2
    //   77: ifnull +7 -> 84
    //   80: aload_2
    //   81: invokevirtual 117	java/io/FileWriter:close	()V
    //   84: iconst_0
    //   85: ireturn
    //   86: astore_2
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: ifnull +7 -> 97
    //   93: aload_1
    //   94: invokevirtual 117	java/io/FileWriter:close	()V
    //   97: aload_2
    //   98: athrow
    //   99: astore_1
    //   100: goto -16 -> 84
    //   103: astore_1
    //   104: goto -7 -> 97
    //   107: astore_2
    //   108: goto -19 -> 89
    //   111: astore_3
    //   112: goto -42 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	g
    //   22	27	1	localFileWriter1	java.io.FileWriter
    //   64	1	1	localException1	Exception
    //   71	23	1	localFileWriter2	java.io.FileWriter
    //   99	1	1	localException2	Exception
    //   103	1	1	localException3	Exception
    //   20	61	2	localFileWriter3	java.io.FileWriter
    //   86	12	2	localObject1	Object
    //   107	1	2	localObject2	Object
    //   67	6	3	localException4	Exception
    //   111	1	3	localException5	Exception
    // Exception table:
    //   from	to	target	type
    //   58	62	64	java/lang/Exception
    //   9	21	67	java/lang/Exception
    //   9	21	86	finally
    //   80	84	99	java/lang/Exception
    //   93	97	103	java/lang/Exception
    //   23	41	107	finally
    //   43	47	107	finally
    //   49	54	107	finally
    //   72	76	107	finally
    //   23	41	111	java/lang/Exception
    //   43	47	111	java/lang/Exception
    //   49	54	111	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */