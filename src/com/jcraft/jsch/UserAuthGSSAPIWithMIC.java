package com.jcraft.jsch;

public class UserAuthGSSAPIWithMIC
  extends UserAuth
{
  private static final byte[][] e = { { 6, 9, 42, -122, 72, -122, -9, 18, 1, 2, 2 } };
  private static final String[] f = { "gssapi-with-mic.krb5" };
  
  /* Error */
  public boolean a(Session paramSession)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 41	com/jcraft/jsch/UserAuth:a	(Lcom/jcraft/jsch/Session;)Z
    //   5: pop
    //   6: aload_0
    //   7: getfield 45	com/jcraft/jsch/UserAuthGSSAPIWithMIC:d	Ljava/lang/String;
    //   10: invokestatic 51	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   13: astore 5
    //   15: aload_0
    //   16: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   19: invokevirtual 58	com/jcraft/jsch/Packet:a	()V
    //   22: aload_0
    //   23: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   26: bipush 50
    //   28: invokevirtual 67	com/jcraft/jsch/Buffer:a	(B)V
    //   31: aload_0
    //   32: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   35: aload 5
    //   37: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   40: aload_0
    //   41: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   44: ldc 72
    //   46: invokestatic 51	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   49: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   52: aload_0
    //   53: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   56: ldc 74
    //   58: invokestatic 51	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   61: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   64: aload_0
    //   65: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   68: getstatic 23	com/jcraft/jsch/UserAuthGSSAPIWithMIC:e	[[B
    //   71: arraylength
    //   72: invokevirtual 77	com/jcraft/jsch/Buffer:a	(I)V
    //   75: iconst_0
    //   76: istore_2
    //   77: iload_2
    //   78: getstatic 23	com/jcraft/jsch/UserAuthGSSAPIWithMIC:e	[[B
    //   81: arraylength
    //   82: if_icmplt +43 -> 125
    //   85: aload_1
    //   86: aload_0
    //   87: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   90: invokevirtual 82	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   93: aload_0
    //   94: aload_1
    //   95: aload_0
    //   96: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   99: invokevirtual 85	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   102: putfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   105: aload_0
    //   106: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   109: invokevirtual 89	com/jcraft/jsch/Buffer:n	()B
    //   112: sipush 255
    //   115: iand
    //   116: istore_2
    //   117: iload_2
    //   118: bipush 51
    //   120: if_icmpne +24 -> 144
    //   123: iconst_0
    //   124: ireturn
    //   125: aload_0
    //   126: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   129: getstatic 23	com/jcraft/jsch/UserAuthGSSAPIWithMIC:e	[[B
    //   132: iload_2
    //   133: aaload
    //   134: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   137: iload_2
    //   138: iconst_1
    //   139: iadd
    //   140: istore_2
    //   141: goto -64 -> 77
    //   144: iload_2
    //   145: bipush 60
    //   147: if_icmpne +280 -> 427
    //   150: aload_0
    //   151: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   154: invokevirtual 92	com/jcraft/jsch/Buffer:d	()I
    //   157: pop
    //   158: aload_0
    //   159: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   162: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   165: pop
    //   166: aload_0
    //   167: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   170: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   173: pop
    //   174: aload_0
    //   175: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   178: invokevirtual 99	com/jcraft/jsch/Buffer:j	()[B
    //   181: astore 4
    //   183: iconst_0
    //   184: istore_2
    //   185: iload_2
    //   186: getstatic 23	com/jcraft/jsch/UserAuthGSSAPIWithMIC:e	[[B
    //   189: arraylength
    //   190: if_icmplt +207 -> 397
    //   193: aconst_null
    //   194: astore 4
    //   196: aload 4
    //   198: ifnull -75 -> 123
    //   201: aload_1
    //   202: aload 4
    //   204: invokevirtual 102	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   207: invokestatic 108	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   210: invokevirtual 112	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   213: checkcast 114	com/jcraft/jsch/GSSContext
    //   216: astore 6
    //   218: aload 6
    //   220: aload_0
    //   221: getfield 45	com/jcraft/jsch/UserAuthGSSAPIWithMIC:d	Ljava/lang/String;
    //   224: aload_1
    //   225: getfield 117	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   228: invokeinterface 120 3 0
    //   233: iconst_0
    //   234: newarray <illegal type>
    //   236: astore 4
    //   238: aload 6
    //   240: invokeinterface 123 1 0
    //   245: ifeq +257 -> 502
    //   248: new 64	com/jcraft/jsch/Buffer
    //   251: dup
    //   252: invokespecial 124	com/jcraft/jsch/Buffer:<init>	()V
    //   255: astore 4
    //   257: aload 4
    //   259: aload_1
    //   260: invokevirtual 126	com/jcraft/jsch/Session:a	()[B
    //   263: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   266: aload 4
    //   268: bipush 50
    //   270: invokevirtual 67	com/jcraft/jsch/Buffer:a	(B)V
    //   273: aload 4
    //   275: aload 5
    //   277: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   280: aload 4
    //   282: ldc 72
    //   284: invokestatic 51	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   287: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   290: aload 4
    //   292: ldc 74
    //   294: invokestatic 51	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   297: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   300: aload 6
    //   302: aload 4
    //   304: getfield 128	com/jcraft/jsch/Buffer:b	[B
    //   307: iconst_0
    //   308: aload 4
    //   310: invokevirtual 130	com/jcraft/jsch/Buffer:a	()I
    //   313: invokeinterface 133 4 0
    //   318: astore 4
    //   320: aload 4
    //   322: ifnull -199 -> 123
    //   325: aload_0
    //   326: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   329: invokevirtual 58	com/jcraft/jsch/Packet:a	()V
    //   332: aload_0
    //   333: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   336: bipush 66
    //   338: invokevirtual 67	com/jcraft/jsch/Buffer:a	(B)V
    //   341: aload_0
    //   342: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   345: aload 4
    //   347: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   350: aload_1
    //   351: aload_0
    //   352: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   355: invokevirtual 82	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   358: aload 6
    //   360: invokeinterface 135 1 0
    //   365: aload_0
    //   366: aload_1
    //   367: aload_0
    //   368: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   371: invokevirtual 85	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   374: putfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   377: aload_0
    //   378: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   381: invokevirtual 89	com/jcraft/jsch/Buffer:n	()B
    //   384: sipush 255
    //   387: iand
    //   388: istore_2
    //   389: iload_2
    //   390: bipush 52
    //   392: if_icmpne +304 -> 696
    //   395: iconst_1
    //   396: ireturn
    //   397: aload 4
    //   399: getstatic 23	com/jcraft/jsch/UserAuthGSSAPIWithMIC:e	[[B
    //   402: iload_2
    //   403: aaload
    //   404: invokestatic 138	com/jcraft/jsch/Util:b	([B[B)Z
    //   407: ifeq +13 -> 420
    //   410: getstatic 29	com/jcraft/jsch/UserAuthGSSAPIWithMIC:f	[Ljava/lang/String;
    //   413: iload_2
    //   414: aaload
    //   415: astore 4
    //   417: goto -221 -> 196
    //   420: iload_2
    //   421: iconst_1
    //   422: iadd
    //   423: istore_2
    //   424: goto -239 -> 185
    //   427: iload_2
    //   428: bipush 53
    //   430: if_icmpne -307 -> 123
    //   433: aload_0
    //   434: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   437: invokevirtual 92	com/jcraft/jsch/Buffer:d	()I
    //   440: pop
    //   441: aload_0
    //   442: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   445: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   448: pop
    //   449: aload_0
    //   450: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   453: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   456: pop
    //   457: aload_0
    //   458: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   461: invokevirtual 99	com/jcraft/jsch/Buffer:j	()[B
    //   464: astore 4
    //   466: aload_0
    //   467: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   470: invokevirtual 99	com/jcraft/jsch/Buffer:j	()[B
    //   473: pop
    //   474: aload 4
    //   476: invokestatic 141	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   479: astore 4
    //   481: aload_0
    //   482: getfield 144	com/jcraft/jsch/UserAuthGSSAPIWithMIC:a	Lcom/jcraft/jsch/UserInfo;
    //   485: ifnull -392 -> 93
    //   488: aload_0
    //   489: getfield 144	com/jcraft/jsch/UserAuthGSSAPIWithMIC:a	Lcom/jcraft/jsch/UserInfo;
    //   492: aload 4
    //   494: invokeinterface 149 2 0
    //   499: goto -406 -> 93
    //   502: aload 6
    //   504: aload 4
    //   506: iconst_0
    //   507: aload 4
    //   509: arraylength
    //   510: invokeinterface 151 4 0
    //   515: astore 4
    //   517: aload 4
    //   519: ifnull +36 -> 555
    //   522: aload_0
    //   523: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   526: invokevirtual 58	com/jcraft/jsch/Packet:a	()V
    //   529: aload_0
    //   530: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   533: bipush 61
    //   535: invokevirtual 67	com/jcraft/jsch/Buffer:a	(B)V
    //   538: aload_0
    //   539: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   542: aload 4
    //   544: invokevirtual 70	com/jcraft/jsch/Buffer:b	([B)V
    //   547: aload_1
    //   548: aload_0
    //   549: getfield 54	com/jcraft/jsch/UserAuthGSSAPIWithMIC:b	Lcom/jcraft/jsch/Packet;
    //   552: invokevirtual 82	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   555: aload 6
    //   557: invokeinterface 123 1 0
    //   562: ifne -324 -> 238
    //   565: aload_0
    //   566: aload_1
    //   567: aload_0
    //   568: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   571: invokevirtual 85	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   574: putfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   577: aload_0
    //   578: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   581: invokevirtual 89	com/jcraft/jsch/Buffer:n	()B
    //   584: sipush 255
    //   587: iand
    //   588: istore_3
    //   589: iload_3
    //   590: bipush 64
    //   592: if_icmpne +69 -> 661
    //   595: aload_0
    //   596: aload_1
    //   597: aload_0
    //   598: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   601: invokevirtual 85	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   604: putfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   607: aload_0
    //   608: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   611: invokevirtual 89	com/jcraft/jsch/Buffer:n	()B
    //   614: sipush 255
    //   617: iand
    //   618: istore_2
    //   619: iload_2
    //   620: bipush 51
    //   622: if_icmpeq -499 -> 123
    //   625: aload_0
    //   626: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   629: invokevirtual 92	com/jcraft/jsch/Buffer:d	()I
    //   632: pop
    //   633: aload_0
    //   634: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   637: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   640: pop
    //   641: aload_0
    //   642: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   645: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   648: pop
    //   649: aload_0
    //   650: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   653: invokevirtual 99	com/jcraft/jsch/Buffer:j	()[B
    //   656: astore 4
    //   658: goto -420 -> 238
    //   661: iload_3
    //   662: istore_2
    //   663: iload_3
    //   664: bipush 65
    //   666: if_icmpne -47 -> 619
    //   669: aload_0
    //   670: aload_1
    //   671: aload_0
    //   672: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   675: invokevirtual 85	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   678: putfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   681: aload_0
    //   682: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   685: invokevirtual 89	com/jcraft/jsch/Buffer:n	()B
    //   688: sipush 255
    //   691: iand
    //   692: istore_2
    //   693: goto -74 -> 619
    //   696: iload_2
    //   697: bipush 51
    //   699: if_icmpne -576 -> 123
    //   702: aload_0
    //   703: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   706: invokevirtual 92	com/jcraft/jsch/Buffer:d	()I
    //   709: pop
    //   710: aload_0
    //   711: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   714: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   717: pop
    //   718: aload_0
    //   719: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   722: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   725: pop
    //   726: aload_0
    //   727: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   730: invokevirtual 99	com/jcraft/jsch/Buffer:j	()[B
    //   733: astore_1
    //   734: aload_0
    //   735: getfield 62	com/jcraft/jsch/UserAuthGSSAPIWithMIC:c	Lcom/jcraft/jsch/Buffer;
    //   738: invokevirtual 95	com/jcraft/jsch/Buffer:g	()I
    //   741: ifeq -618 -> 123
    //   744: new 153	com/jcraft/jsch/JSchPartialAuthException
    //   747: dup
    //   748: aload_1
    //   749: invokestatic 141	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   752: invokespecial 155	com/jcraft/jsch/JSchPartialAuthException:<init>	(Ljava/lang/String;)V
    //   755: athrow
    //   756: astore_1
    //   757: iconst_0
    //   758: ireturn
    //   759: astore_1
    //   760: iconst_0
    //   761: ireturn
    //   762: astore_1
    //   763: iconst_0
    //   764: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	765	0	this	UserAuthGSSAPIWithMIC
    //   0	765	1	paramSession	Session
    //   76	624	2	i	int
    //   588	79	3	j	int
    //   181	476	4	localObject	Object
    //   13	263	5	arrayOfByte	byte[]
    //   216	340	6	localGSSContext	GSSContext
    // Exception table:
    //   from	to	target	type
    //   502	517	756	com/jcraft/jsch/JSchException
    //   218	233	759	com/jcraft/jsch/JSchException
    //   201	218	762	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuthGSSAPIWithMIC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */