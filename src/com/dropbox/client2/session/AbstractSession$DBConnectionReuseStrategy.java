package com.dropbox.client2.session;

import org.apache.http.impl.DefaultConnectionReuseStrategy;

class AbstractSession$DBConnectionReuseStrategy
  extends DefaultConnectionReuseStrategy
{
  /* Error */
  public boolean keepAlive(org.apache.http.HttpResponse paramHttpResponse, org.apache.http.protocol.HttpContext paramHttpContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 19	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 21
    //   10: invokespecial 24	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_2
    //   15: ifnonnull +13 -> 28
    //   18: new 19	java/lang/IllegalArgumentException
    //   21: dup
    //   22: ldc 26
    //   24: invokespecial 24	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   27: athrow
    //   28: aload_1
    //   29: invokeinterface 32 1 0
    //   34: invokeinterface 38 1 0
    //   39: astore 6
    //   41: aload_1
    //   42: ldc 40
    //   44: invokeinterface 44 2 0
    //   49: astore_2
    //   50: aload_2
    //   51: ifnull +19 -> 70
    //   54: ldc 46
    //   56: aload_2
    //   57: invokeinterface 52 1 0
    //   62: invokevirtual 58	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   65: ifne +42 -> 107
    //   68: iconst_0
    //   69: ireturn
    //   70: aload_1
    //   71: ldc 60
    //   73: invokeinterface 64 2 0
    //   78: astore_2
    //   79: aload_2
    //   80: ifnull -12 -> 68
    //   83: aload_2
    //   84: arraylength
    //   85: iconst_1
    //   86: if_icmpne -18 -> 68
    //   89: aload_2
    //   90: iconst_0
    //   91: aaload
    //   92: astore_2
    //   93: aload_2
    //   94: invokeinterface 52 1 0
    //   99: invokestatic 70	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   102: istore_3
    //   103: iload_3
    //   104: iflt -36 -> 68
    //   107: aload_1
    //   108: ldc 72
    //   110: invokeinterface 76 2 0
    //   115: astore 5
    //   117: aload 5
    //   119: astore_2
    //   120: aload 5
    //   122: invokeinterface 82 1 0
    //   127: ifne +12 -> 139
    //   130: aload_1
    //   131: ldc 84
    //   133: invokeinterface 76 2 0
    //   138: astore_2
    //   139: aload_2
    //   140: invokeinterface 82 1 0
    //   145: ifeq +60 -> 205
    //   148: aload_0
    //   149: aload_2
    //   150: invokevirtual 88	com/dropbox/client2/session/AbstractSession$DBConnectionReuseStrategy:createTokenIterator	(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    //   153: astore_1
    //   154: iconst_0
    //   155: istore_3
    //   156: aload_1
    //   157: invokeinterface 91 1 0
    //   162: ifne +9 -> 171
    //   165: iload_3
    //   166: ifeq +39 -> 205
    //   169: iconst_1
    //   170: ireturn
    //   171: aload_1
    //   172: invokeinterface 94 1 0
    //   177: astore_2
    //   178: ldc 96
    //   180: aload_2
    //   181: invokevirtual 58	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   184: ifne -116 -> 68
    //   187: ldc 98
    //   189: aload_2
    //   190: invokevirtual 58	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   193: istore 4
    //   195: iload 4
    //   197: ifeq -41 -> 156
    //   200: iconst_1
    //   201: istore_3
    //   202: goto -46 -> 156
    //   205: aload 6
    //   207: getstatic 104	org/apache/http/HttpVersion:HTTP_1_0	Lorg/apache/http/HttpVersion;
    //   210: invokevirtual 110	org/apache/http/ProtocolVersion:lessEquals	(Lorg/apache/http/ProtocolVersion;)Z
    //   213: ifeq +9 -> 222
    //   216: iconst_0
    //   217: istore 4
    //   219: iload 4
    //   221: ireturn
    //   222: iconst_1
    //   223: istore 4
    //   225: goto -6 -> 219
    //   228: astore_1
    //   229: iconst_0
    //   230: ireturn
    //   231: astore_1
    //   232: iconst_0
    //   233: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	DBConnectionReuseStrategy
    //   0	234	1	paramHttpResponse	org.apache.http.HttpResponse
    //   0	234	2	paramHttpContext	org.apache.http.protocol.HttpContext
    //   102	100	3	i	int
    //   193	31	4	bool	boolean
    //   115	6	5	localHeaderIterator	org.apache.http.HeaderIterator
    //   39	167	6	localProtocolVersion	org.apache.http.ProtocolVersion
    // Exception table:
    //   from	to	target	type
    //   148	154	228	org/apache/http/ParseException
    //   156	165	228	org/apache/http/ParseException
    //   171	195	228	org/apache/http/ParseException
    //   93	103	231	java/lang/NumberFormatException
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.DBConnectionReuseStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */