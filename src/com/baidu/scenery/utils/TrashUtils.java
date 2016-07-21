package com.baidu.scenery.utils;

import android.content.Context;
import android.os.StatFs;
import java.util.Iterator;
import java.util.List;

public class TrashUtils
{
  private static final long SD_200 = 209715200L;
  
  /* Error */
  private static List<TrashUtils.SdInfoItem> getAllSDInfo(Context paramContext)
  {
    // Byte code:
    //   0: new 19	com/baidu/scenery/utils/StorageList
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 22	com/baidu/scenery/utils/StorageList:<init>	(Landroid/content/Context;)V
    //   8: astore_0
    //   9: aload_0
    //   10: invokevirtual 26	com/baidu/scenery/utils/StorageList:getMountedPhoneVolumePaths	()Ljava/util/ArrayList;
    //   13: astore 10
    //   15: aload_0
    //   16: invokevirtual 29	com/baidu/scenery/utils/StorageList:getMountedSdCardVolumePaths	()Ljava/util/ArrayList;
    //   19: astore 9
    //   21: new 31	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 32	java/util/ArrayList:<init>	()V
    //   28: astore_0
    //   29: new 31	java/util/ArrayList
    //   32: dup
    //   33: invokespecial 32	java/util/ArrayList:<init>	()V
    //   36: astore 8
    //   38: aload 10
    //   40: ifnull +78 -> 118
    //   43: aload 10
    //   45: invokeinterface 38 1 0
    //   50: ifne +68 -> 118
    //   53: aload 10
    //   55: invokeinterface 42 1 0
    //   60: astore 10
    //   62: aload 10
    //   64: invokeinterface 47 1 0
    //   69: ifeq +49 -> 118
    //   72: aload 10
    //   74: invokeinterface 51 1 0
    //   79: checkcast 53	java/lang/String
    //   82: astore 11
    //   84: new 55	com/baidu/scenery/utils/TrashUtils$SdInfoItem
    //   87: dup
    //   88: invokespecial 56	com/baidu/scenery/utils/TrashUtils$SdInfoItem:<init>	()V
    //   91: astore 12
    //   93: aload 12
    //   95: iconst_0
    //   96: putfield 60	com/baidu/scenery/utils/TrashUtils$SdInfoItem:type	I
    //   99: aload 12
    //   101: aload 11
    //   103: putfield 64	com/baidu/scenery/utils/TrashUtils$SdInfoItem:path	Ljava/lang/String;
    //   106: aload_0
    //   107: aload 12
    //   109: invokeinterface 68 2 0
    //   114: pop
    //   115: goto -53 -> 62
    //   118: aload 9
    //   120: ifnull +75 -> 195
    //   123: aload 9
    //   125: invokeinterface 38 1 0
    //   130: ifne +65 -> 195
    //   133: iconst_0
    //   134: istore_1
    //   135: iload_1
    //   136: aload 9
    //   138: invokeinterface 72 1 0
    //   143: if_icmpge +52 -> 195
    //   146: new 55	com/baidu/scenery/utils/TrashUtils$SdInfoItem
    //   149: dup
    //   150: invokespecial 56	com/baidu/scenery/utils/TrashUtils$SdInfoItem:<init>	()V
    //   153: astore 10
    //   155: aload 10
    //   157: iload_1
    //   158: iconst_1
    //   159: iadd
    //   160: putfield 60	com/baidu/scenery/utils/TrashUtils$SdInfoItem:type	I
    //   163: aload 10
    //   165: aload 9
    //   167: iload_1
    //   168: invokeinterface 76 2 0
    //   173: checkcast 53	java/lang/String
    //   176: putfield 64	com/baidu/scenery/utils/TrashUtils$SdInfoItem:path	Ljava/lang/String;
    //   179: aload_0
    //   180: aload 10
    //   182: invokeinterface 68 2 0
    //   187: pop
    //   188: iload_1
    //   189: iconst_1
    //   190: iadd
    //   191: istore_1
    //   192: goto -57 -> 135
    //   195: aload_0
    //   196: invokeinterface 42 1 0
    //   201: astore 9
    //   203: aload 9
    //   205: invokeinterface 47 1 0
    //   210: ifeq +251 -> 461
    //   213: aload 9
    //   215: invokeinterface 51 1 0
    //   220: checkcast 55	com/baidu/scenery/utils/TrashUtils$SdInfoItem
    //   223: astore 10
    //   225: new 78	android/os/StatFs
    //   228: dup
    //   229: aload 10
    //   231: getfield 64	com/baidu/scenery/utils/TrashUtils$SdInfoItem:path	Ljava/lang/String;
    //   234: invokespecial 81	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   237: astore 11
    //   239: getstatic 86	android/os/Build$VERSION:SDK_INT	I
    //   242: bipush 18
    //   244: if_icmplt +146 -> 390
    //   247: aload 11
    //   249: invokevirtual 90	java/lang/Object:getClass	()Ljava/lang/Class;
    //   252: ldc 92
    //   254: iconst_0
    //   255: anewarray 94	java/lang/Class
    //   258: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   261: astore 12
    //   263: aload 11
    //   265: invokevirtual 90	java/lang/Object:getClass	()Ljava/lang/Class;
    //   268: ldc 100
    //   270: iconst_0
    //   271: anewarray 94	java/lang/Class
    //   274: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   277: astore 13
    //   279: aload 12
    //   281: aload 11
    //   283: iconst_0
    //   284: anewarray 4	java/lang/Object
    //   287: invokevirtual 106	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   290: checkcast 108	java/lang/Long
    //   293: invokevirtual 112	java/lang/Long:longValue	()J
    //   296: lstore 4
    //   298: aload 13
    //   300: aload 11
    //   302: iconst_0
    //   303: anewarray 4	java/lang/Object
    //   306: invokevirtual 106	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   309: checkcast 108	java/lang/Long
    //   312: invokevirtual 112	java/lang/Long:longValue	()J
    //   315: lstore_2
    //   316: lload_2
    //   317: ldc2_w 7
    //   320: lcmp
    //   321: ifge +90 -> 411
    //   324: aload 8
    //   326: aload 10
    //   328: invokeinterface 68 2 0
    //   333: pop
    //   334: goto -131 -> 203
    //   337: astore 11
    //   339: aload 8
    //   341: aload 10
    //   343: invokeinterface 68 2 0
    //   348: pop
    //   349: goto -146 -> 203
    //   352: astore 11
    //   354: aload 8
    //   356: aload 10
    //   358: invokeinterface 68 2 0
    //   363: pop
    //   364: goto -161 -> 203
    //   367: astore 12
    //   369: aload 11
    //   371: invokestatic 116	com/baidu/scenery/utils/TrashUtils:getTotalAndAvailableSize	(Landroid/os/StatFs;)[J
    //   374: astore 11
    //   376: aload 11
    //   378: iconst_0
    //   379: laload
    //   380: lstore_2
    //   381: aload 11
    //   383: iconst_1
    //   384: laload
    //   385: lstore 4
    //   387: goto -71 -> 316
    //   390: aload 11
    //   392: invokestatic 116	com/baidu/scenery/utils/TrashUtils:getTotalAndAvailableSize	(Landroid/os/StatFs;)[J
    //   395: astore 11
    //   397: aload 11
    //   399: iconst_0
    //   400: laload
    //   401: lstore_2
    //   402: aload 11
    //   404: iconst_1
    //   405: laload
    //   406: lstore 4
    //   408: goto -92 -> 316
    //   411: lload_2
    //   412: lload 4
    //   414: lsub
    //   415: lstore 6
    //   417: lload 6
    //   419: lstore 4
    //   421: lload 6
    //   423: lconst_0
    //   424: lcmp
    //   425: ifge +6 -> 431
    //   428: lconst_0
    //   429: lstore 4
    //   431: aload 10
    //   433: lload_2
    //   434: putfield 119	com/baidu/scenery/utils/TrashUtils$SdInfoItem:totalsize	J
    //   437: aload 10
    //   439: lload 4
    //   441: putfield 122	com/baidu/scenery/utils/TrashUtils$SdInfoItem:useSize	J
    //   444: aload 10
    //   446: lload 4
    //   448: ldc2_w 123
    //   451: lmul
    //   452: lload_2
    //   453: ldiv
    //   454: l2i
    //   455: putfield 127	com/baidu/scenery/utils/TrashUtils$SdInfoItem:progress	I
    //   458: goto -255 -> 203
    //   461: aload_0
    //   462: aload 8
    //   464: invokeinterface 131 2 0
    //   469: pop
    //   470: aload_0
    //   471: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	472	0	paramContext	Context
    //   134	58	1	i	int
    //   315	138	2	l1	long
    //   296	151	4	l2	long
    //   415	7	6	l3	long
    //   36	427	8	localArrayList	java.util.ArrayList
    //   19	195	9	localObject1	Object
    //   13	432	10	localObject2	Object
    //   82	219	11	localObject3	Object
    //   337	1	11	localException1	Exception
    //   352	18	11	localException2	Exception
    //   374	29	11	arrayOfLong	long[]
    //   91	189	12	localObject4	Object
    //   367	1	12	localException3	Exception
    //   277	22	13	localMethod	java.lang.reflect.Method
    // Exception table:
    //   from	to	target	type
    //   324	334	337	java/lang/Exception
    //   431	458	337	java/lang/Exception
    //   225	239	352	java/lang/Exception
    //   247	316	367	java/lang/Exception
  }
  
  public static long getAllSDInfoUsedSize(Context paramContext)
  {
    paramContext = getAllSDInfo(paramContext).iterator();
    for (long l = 0L; paramContext.hasNext(); l = nextuseSize + l) {}
    return l;
  }
  
  private static long[] getTotalAndAvailableSize(StatFs paramStatFs)
  {
    long l = paramStatFs.getBlockSize();
    return new long[] { paramStatFs.getBlockCount() * l, l * paramStatFs.getAvailableBlocks() };
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.TrashUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */