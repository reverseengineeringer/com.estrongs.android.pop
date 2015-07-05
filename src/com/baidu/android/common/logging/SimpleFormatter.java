package com.baidu.android.common.logging;

import java.text.MessageFormat;
import java.util.Date;
import java.util.logging.Formatter;

class SimpleFormatter
  extends Formatter
{
  private static String format = "{0,date} {0,time}";
  private Object[] args = new Object[1];
  Date dat = new Date();
  private MessageFormat formatter;
  
  /* Error */
  public String format(java.util.logging.LogRecord paramLogRecord)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: new 36	java/lang/Throwable
    //   8: dup
    //   9: invokespecial 37	java/lang/Throwable:<init>	()V
    //   12: invokevirtual 41	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   15: astore 6
    //   17: aload 6
    //   19: arraylength
    //   20: istore 5
    //   22: iconst_0
    //   23: istore_2
    //   24: iconst_0
    //   25: istore_3
    //   26: iload_2
    //   27: iload 5
    //   29: if_icmpge +394 -> 423
    //   32: aload 6
    //   34: iload_2
    //   35: aaload
    //   36: astore 8
    //   38: aload 8
    //   40: invokevirtual 47	java/lang/StackTraceElement:getClassName	()Ljava/lang/String;
    //   43: ldc 49
    //   45: invokevirtual 54	java/lang/Class:getName	()Ljava/lang/String;
    //   48: invokevirtual 60	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   51: ifeq +9 -> 60
    //   54: iconst_1
    //   55: istore 4
    //   57: goto +374 -> 431
    //   60: iload_3
    //   61: istore 4
    //   63: iload_3
    //   64: ifeq +367 -> 431
    //   67: aload 8
    //   69: invokevirtual 47	java/lang/StackTraceElement:getClassName	()Ljava/lang/String;
    //   72: astore 7
    //   74: aload 8
    //   76: invokevirtual 63	java/lang/StackTraceElement:getMethodName	()Ljava/lang/String;
    //   79: astore 6
    //   81: aload 8
    //   83: invokevirtual 67	java/lang/StackTraceElement:getLineNumber	()I
    //   86: istore_2
    //   87: aload_1
    //   88: aload 7
    //   90: invokevirtual 73	java/util/logging/LogRecord:setSourceClassName	(Ljava/lang/String;)V
    //   93: aload_1
    //   94: aload 6
    //   96: invokevirtual 76	java/util/logging/LogRecord:setSourceMethodName	(Ljava/lang/String;)V
    //   99: new 78	java/lang/StringBuffer
    //   102: dup
    //   103: invokespecial 79	java/lang/StringBuffer:<init>	()V
    //   106: astore 6
    //   108: aload_0
    //   109: getfield 27	com/baidu/android/common/logging/SimpleFormatter:dat	Ljava/util/Date;
    //   112: aload_1
    //   113: invokevirtual 83	java/util/logging/LogRecord:getMillis	()J
    //   116: invokevirtual 87	java/util/Date:setTime	(J)V
    //   119: aload_0
    //   120: getfield 31	com/baidu/android/common/logging/SimpleFormatter:args	[Ljava/lang/Object;
    //   123: iconst_0
    //   124: aload_0
    //   125: getfield 27	com/baidu/android/common/logging/SimpleFormatter:dat	Ljava/util/Date;
    //   128: aastore
    //   129: new 78	java/lang/StringBuffer
    //   132: dup
    //   133: invokespecial 79	java/lang/StringBuffer:<init>	()V
    //   136: astore 7
    //   138: aload_0
    //   139: getfield 89	com/baidu/android/common/logging/SimpleFormatter:formatter	Ljava/text/MessageFormat;
    //   142: ifnonnull +17 -> 159
    //   145: aload_0
    //   146: new 91	java/text/MessageFormat
    //   149: dup
    //   150: getstatic 18	com/baidu/android/common/logging/SimpleFormatter:format	Ljava/lang/String;
    //   153: invokespecial 93	java/text/MessageFormat:<init>	(Ljava/lang/String;)V
    //   156: putfield 89	com/baidu/android/common/logging/SimpleFormatter:formatter	Ljava/text/MessageFormat;
    //   159: aload_0
    //   160: getfield 89	com/baidu/android/common/logging/SimpleFormatter:formatter	Ljava/text/MessageFormat;
    //   163: aload_0
    //   164: getfield 31	com/baidu/android/common/logging/SimpleFormatter:args	[Ljava/lang/Object;
    //   167: aload 7
    //   169: aconst_null
    //   170: invokevirtual 96	java/text/MessageFormat:format	([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    //   173: pop
    //   174: aload 6
    //   176: aload 7
    //   178: invokevirtual 100	java/lang/StringBuffer:append	(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    //   181: pop
    //   182: aload 6
    //   184: new 102	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   191: ldc 105
    //   193: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_1
    //   197: invokevirtual 83	java/util/logging/LogRecord:getMillis	()J
    //   200: ldc2_w 109
    //   203: lrem
    //   204: invokevirtual 113	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   207: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   213: pop
    //   214: aload 6
    //   216: ldc 121
    //   218: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   221: pop
    //   222: aload_1
    //   223: invokevirtual 124	java/util/logging/LogRecord:getSourceClassName	()Ljava/lang/String;
    //   226: ifnull +171 -> 397
    //   229: aload 6
    //   231: aload_1
    //   232: invokevirtual 124	java/util/logging/LogRecord:getSourceClassName	()Ljava/lang/String;
    //   235: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   238: pop
    //   239: aload_1
    //   240: invokevirtual 127	java/util/logging/LogRecord:getSourceMethodName	()Ljava/lang/String;
    //   243: ifnull +21 -> 264
    //   246: aload 6
    //   248: ldc 121
    //   250: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   253: pop
    //   254: aload 6
    //   256: aload_1
    //   257: invokevirtual 127	java/util/logging/LogRecord:getSourceMethodName	()Ljava/lang/String;
    //   260: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   263: pop
    //   264: aload 6
    //   266: ldc 121
    //   268: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   271: pop
    //   272: aload 6
    //   274: iload_2
    //   275: invokevirtual 130	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   278: pop
    //   279: aload 6
    //   281: ldc 121
    //   283: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   286: pop
    //   287: aload_0
    //   288: aload_1
    //   289: invokevirtual 133	com/baidu/android/common/logging/SimpleFormatter:formatMessage	(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    //   292: astore 7
    //   294: aload 6
    //   296: aload_1
    //   297: invokevirtual 137	java/util/logging/LogRecord:getLevel	()Ljava/util/logging/Level;
    //   300: invokevirtual 142	java/util/logging/Level:getLocalizedName	()Ljava/lang/String;
    //   303: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   306: pop
    //   307: aload 6
    //   309: ldc -112
    //   311: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   314: pop
    //   315: aload 6
    //   317: aload 7
    //   319: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   322: pop
    //   323: aload 6
    //   325: ldc -110
    //   327: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   330: pop
    //   331: aload_1
    //   332: invokevirtual 150	java/util/logging/LogRecord:getThrown	()Ljava/lang/Throwable;
    //   335: astore 7
    //   337: aload 7
    //   339: ifnull +48 -> 387
    //   342: new 152	java/io/StringWriter
    //   345: dup
    //   346: invokespecial 153	java/io/StringWriter:<init>	()V
    //   349: astore 7
    //   351: new 155	java/io/PrintWriter
    //   354: dup
    //   355: aload 7
    //   357: invokespecial 158	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   360: astore 8
    //   362: aload_1
    //   363: invokevirtual 150	java/util/logging/LogRecord:getThrown	()Ljava/lang/Throwable;
    //   366: aload 8
    //   368: invokevirtual 162	java/lang/Throwable:printStackTrace	(Ljava/io/PrintWriter;)V
    //   371: aload 8
    //   373: invokevirtual 165	java/io/PrintWriter:close	()V
    //   376: aload 6
    //   378: aload 7
    //   380: invokevirtual 166	java/io/StringWriter:toString	()Ljava/lang/String;
    //   383: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   386: pop
    //   387: aload 6
    //   389: invokevirtual 167	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   392: astore_1
    //   393: aload_0
    //   394: monitorexit
    //   395: aload_1
    //   396: areturn
    //   397: aload 6
    //   399: aload_1
    //   400: invokevirtual 170	java/util/logging/LogRecord:getLoggerName	()Ljava/lang/String;
    //   403: invokevirtual 119	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   406: pop
    //   407: goto -168 -> 239
    //   410: astore_1
    //   411: aload_0
    //   412: monitorexit
    //   413: aload_1
    //   414: athrow
    //   415: astore_1
    //   416: aload_1
    //   417: invokevirtual 172	java/lang/Exception:printStackTrace	()V
    //   420: goto -33 -> 387
    //   423: iconst_0
    //   424: istore_2
    //   425: aconst_null
    //   426: astore 6
    //   428: goto -341 -> 87
    //   431: iload_2
    //   432: iconst_1
    //   433: iadd
    //   434: istore_2
    //   435: iload 4
    //   437: istore_3
    //   438: goto -412 -> 26
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	441	0	this	SimpleFormatter
    //   0	441	1	paramLogRecord	java.util.logging.LogRecord
    //   23	412	2	i	int
    //   25	413	3	j	int
    //   55	381	4	k	int
    //   20	10	5	m	int
    //   15	412	6	localObject1	Object
    //   1	378	7	localObject2	Object
    //   36	336	8	localPrintWriter	java.io.PrintWriter
    // Exception table:
    //   from	to	target	type
    //   5	22	410	finally
    //   38	54	410	finally
    //   67	87	410	finally
    //   87	159	410	finally
    //   159	239	410	finally
    //   239	264	410	finally
    //   264	337	410	finally
    //   342	387	410	finally
    //   387	393	410	finally
    //   397	407	410	finally
    //   416	420	410	finally
    //   342	387	415	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.logging.SimpleFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */