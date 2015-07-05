package com.jcraft.jsch;

class ChannelAgentForwarding
  extends Channel
{
  private final byte A = 6;
  private final byte B = 7;
  private final byte C = 8;
  private final byte D = 9;
  private final byte E = 11;
  private final byte F = 12;
  private final byte G = 13;
  private final byte H = 14;
  private final byte I = 17;
  private final byte J = 18;
  private final byte K = 19;
  private final byte L = 30;
  private Buffer M = null;
  private Buffer N = null;
  private Packet O = null;
  private Buffer P = null;
  boolean u = true;
  private final byte v = 1;
  private final byte w = 2;
  private final byte x = 3;
  private final byte y = 4;
  private final byte z = 5;
  
  ChannelAgentForwarding()
  {
    c(131072);
    d(131072);
    e(16384);
    d = Util.b("auth-agent@openssh.com");
    M = new Buffer();
    M.k();
    P = new Buffer();
    o = true;
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    O.a();
    N.a((byte)94);
    N.a(c);
    N.a(paramArrayOfByte.length + 4);
    N.b(paramArrayOfByte);
    try
    {
      j().a(O, this, paramArrayOfByte.length + 4);
      return;
    }
    catch (Exception paramArrayOfByte) {}
  }
  
  /* Error */
  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: bipush 6
    //   2: istore 4
    //   4: iconst_0
    //   5: istore 5
    //   7: aload_0
    //   8: getfield 75	com/jcraft/jsch/ChannelAgentForwarding:O	Lcom/jcraft/jsch/Packet;
    //   11: ifnonnull +33 -> 44
    //   14: aload_0
    //   15: new 101	com/jcraft/jsch/Buffer
    //   18: dup
    //   19: aload_0
    //   20: getfield 141	com/jcraft/jsch/ChannelAgentForwarding:i	I
    //   23: invokespecial 143	com/jcraft/jsch/Buffer:<init>	(I)V
    //   26: putfield 73	com/jcraft/jsch/ChannelAgentForwarding:N	Lcom/jcraft/jsch/Buffer;
    //   29: aload_0
    //   30: new 115	com/jcraft/jsch/Packet
    //   33: dup
    //   34: aload_0
    //   35: getfield 73	com/jcraft/jsch/ChannelAgentForwarding:N	Lcom/jcraft/jsch/Buffer;
    //   38: invokespecial 146	com/jcraft/jsch/Packet:<init>	(Lcom/jcraft/jsch/Buffer;)V
    //   41: putfield 75	com/jcraft/jsch/ChannelAgentForwarding:O	Lcom/jcraft/jsch/Packet;
    //   44: aload_0
    //   45: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   48: invokevirtual 149	com/jcraft/jsch/Buffer:l	()V
    //   51: aload_0
    //   52: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   55: getfield 151	com/jcraft/jsch/Buffer:b	[B
    //   58: arraylength
    //   59: aload_0
    //   60: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   63: getfield 152	com/jcraft/jsch/Buffer:c	I
    //   66: iload_3
    //   67: iadd
    //   68: if_icmpge +47 -> 115
    //   71: aload_0
    //   72: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   75: getfield 154	com/jcraft/jsch/Buffer:d	I
    //   78: iload_3
    //   79: iadd
    //   80: newarray <illegal type>
    //   82: astore 7
    //   84: aload_0
    //   85: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   88: getfield 151	com/jcraft/jsch/Buffer:b	[B
    //   91: iconst_0
    //   92: aload 7
    //   94: iconst_0
    //   95: aload_0
    //   96: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   99: getfield 151	com/jcraft/jsch/Buffer:b	[B
    //   102: arraylength
    //   103: invokestatic 160	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   106: aload_0
    //   107: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   110: aload 7
    //   112: putfield 151	com/jcraft/jsch/Buffer:b	[B
    //   115: aload_0
    //   116: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   119: aload_1
    //   120: iload_2
    //   121: iload_3
    //   122: invokevirtual 162	com/jcraft/jsch/Buffer:a	([BII)V
    //   125: aload_0
    //   126: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   129: invokevirtual 165	com/jcraft/jsch/Buffer:d	()I
    //   132: aload_0
    //   133: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   136: invokevirtual 167	com/jcraft/jsch/Buffer:a	()I
    //   139: if_icmple +19 -> 158
    //   142: aload_0
    //   143: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   146: astore_1
    //   147: aload_1
    //   148: aload_1
    //   149: getfield 154	com/jcraft/jsch/Buffer:d	I
    //   152: iconst_4
    //   153: isub
    //   154: putfield 154	com/jcraft/jsch/Buffer:d	I
    //   157: return
    //   158: aload_0
    //   159: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   162: invokevirtual 170	com/jcraft/jsch/Buffer:g	()I
    //   165: istore_2
    //   166: aload_0
    //   167: invokevirtual 130	com/jcraft/jsch/ChannelAgentForwarding:j	()Lcom/jcraft/jsch/Session;
    //   170: astore 7
    //   172: aload 7
    //   174: invokevirtual 173	com/jcraft/jsch/Session:i	()Lcom/jcraft/jsch/IdentityRepository;
    //   177: astore_1
    //   178: aload 7
    //   180: invokevirtual 176	com/jcraft/jsch/Session:c	()Lcom/jcraft/jsch/UserInfo;
    //   183: astore 9
    //   185: aload_0
    //   186: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   189: invokevirtual 105	com/jcraft/jsch/Buffer:k	()V
    //   192: iload_2
    //   193: bipush 11
    //   195: if_icmpne +166 -> 361
    //   198: aload_0
    //   199: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   202: bipush 12
    //   204: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   207: aload_1
    //   208: invokeinterface 181 1 0
    //   213: astore_1
    //   214: aload_1
    //   215: monitorenter
    //   216: iconst_0
    //   217: istore_3
    //   218: iconst_0
    //   219: istore_2
    //   220: iload_3
    //   221: aload_1
    //   222: invokevirtual 186	java/util/Vector:size	()I
    //   225: if_icmplt +61 -> 286
    //   228: aload_0
    //   229: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   232: iload_2
    //   233: invokevirtual 124	com/jcraft/jsch/Buffer:a	(I)V
    //   236: iload 5
    //   238: istore_2
    //   239: iload_2
    //   240: aload_1
    //   241: invokevirtual 186	java/util/Vector:size	()I
    //   244: if_icmplt +65 -> 309
    //   247: aload_1
    //   248: monitorexit
    //   249: aload_0
    //   250: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   253: invokevirtual 167	com/jcraft/jsch/Buffer:a	()I
    //   256: newarray <illegal type>
    //   258: astore_1
    //   259: aload_0
    //   260: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   263: aload_1
    //   264: invokevirtual 188	com/jcraft/jsch/Buffer:d	([B)V
    //   267: aload_0
    //   268: aload_1
    //   269: invokespecial 190	com/jcraft/jsch/ChannelAgentForwarding:a	([B)V
    //   272: return
    //   273: astore_1
    //   274: new 192	java/io/IOException
    //   277: dup
    //   278: aload_1
    //   279: invokevirtual 196	com/jcraft/jsch/JSchException:toString	()Ljava/lang/String;
    //   282: invokespecial 199	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   285: athrow
    //   286: aload_1
    //   287: iload_3
    //   288: invokevirtual 203	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   291: checkcast 205	com/jcraft/jsch/Identity
    //   294: invokeinterface 208 1 0
    //   299: ifnull +513 -> 812
    //   302: iload_2
    //   303: iconst_1
    //   304: iadd
    //   305: istore_2
    //   306: goto +506 -> 812
    //   309: aload_1
    //   310: iload_2
    //   311: invokevirtual 203	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   314: checkcast 205	com/jcraft/jsch/Identity
    //   317: invokeinterface 208 1 0
    //   322: astore 7
    //   324: aload 7
    //   326: ifnonnull +6 -> 332
    //   329: goto +490 -> 819
    //   332: aload_0
    //   333: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   336: aload 7
    //   338: invokevirtual 126	com/jcraft/jsch/Buffer:b	([B)V
    //   341: aload_0
    //   342: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   345: getstatic 210	com/jcraft/jsch/Util:a	[B
    //   348: invokevirtual 126	com/jcraft/jsch/Buffer:b	([B)V
    //   351: goto +468 -> 819
    //   354: astore 7
    //   356: aload_1
    //   357: monitorexit
    //   358: aload 7
    //   360: athrow
    //   361: iload_2
    //   362: iconst_1
    //   363: if_icmpne +22 -> 385
    //   366: aload_0
    //   367: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   370: iconst_2
    //   371: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   374: aload_0
    //   375: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   378: iconst_0
    //   379: invokevirtual 124	com/jcraft/jsch/Buffer:a	(I)V
    //   382: goto -133 -> 249
    //   385: iload_2
    //   386: bipush 13
    //   388: if_icmpne +252 -> 640
    //   391: aload_0
    //   392: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   395: invokevirtual 212	com/jcraft/jsch/Buffer:j	()[B
    //   398: astore 10
    //   400: aload_0
    //   401: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   404: invokevirtual 212	com/jcraft/jsch/Buffer:j	()[B
    //   407: astore 7
    //   409: aload_0
    //   410: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   413: invokevirtual 165	com/jcraft/jsch/Buffer:d	()I
    //   416: pop
    //   417: aload_1
    //   418: invokeinterface 181 1 0
    //   423: astore 8
    //   425: aload 8
    //   427: monitorenter
    //   428: iconst_0
    //   429: istore_2
    //   430: iload_2
    //   431: aload 8
    //   433: invokevirtual 186	java/util/Vector:size	()I
    //   436: if_icmplt +37 -> 473
    //   439: aconst_null
    //   440: astore_1
    //   441: aload 8
    //   443: monitorexit
    //   444: aload_1
    //   445: ifnull +362 -> 807
    //   448: aload_1
    //   449: aload 7
    //   451: invokeinterface 215 2 0
    //   456: astore_1
    //   457: aload_1
    //   458: ifnonnull +162 -> 620
    //   461: aload_0
    //   462: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   465: bipush 30
    //   467: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   470: goto -221 -> 249
    //   473: aload 8
    //   475: iload_2
    //   476: invokevirtual 203	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   479: checkcast 205	com/jcraft/jsch/Identity
    //   482: astore_1
    //   483: aload_1
    //   484: invokeinterface 208 1 0
    //   489: ifnonnull +6 -> 495
    //   492: goto +334 -> 826
    //   495: aload 10
    //   497: aload_1
    //   498: invokeinterface 208 1 0
    //   503: invokestatic 218	com/jcraft/jsch/Util:b	([B[B)Z
    //   506: ifeq +320 -> 826
    //   509: aload_1
    //   510: invokeinterface 221 1 0
    //   515: ifeq +17 -> 532
    //   518: aload 9
    //   520: ifnull +306 -> 826
    //   523: aload_1
    //   524: invokeinterface 221 1 0
    //   529: ifne +15 -> 544
    //   532: aload_1
    //   533: invokeinterface 221 1 0
    //   538: ifne +288 -> 826
    //   541: goto -100 -> 441
    //   544: aload 9
    //   546: new 223	java/lang/StringBuilder
    //   549: dup
    //   550: ldc -31
    //   552: invokespecial 226	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   555: aload_1
    //   556: invokeinterface 228 1 0
    //   561: invokevirtual 232	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: invokevirtual 233	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   567: invokeinterface 238 2 0
    //   572: ifeq -40 -> 532
    //   575: aload 9
    //   577: invokeinterface 240 1 0
    //   582: astore 11
    //   584: aload 11
    //   586: ifnull -54 -> 532
    //   589: aload 11
    //   591: invokestatic 96	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   594: astore 11
    //   596: aload_1
    //   597: aload 11
    //   599: invokeinterface 243 2 0
    //   604: istore 6
    //   606: iload 6
    //   608: ifeq -85 -> 523
    //   611: goto -79 -> 532
    //   614: astore_1
    //   615: aload 8
    //   617: monitorexit
    //   618: aload_1
    //   619: athrow
    //   620: aload_0
    //   621: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   624: bipush 14
    //   626: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   629: aload_0
    //   630: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   633: aload_1
    //   634: invokevirtual 126	com/jcraft/jsch/Buffer:b	([B)V
    //   637: goto -388 -> 249
    //   640: iload_2
    //   641: bipush 18
    //   643: if_icmpne +29 -> 672
    //   646: aload_1
    //   647: aload_0
    //   648: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   651: invokevirtual 212	com/jcraft/jsch/Buffer:j	()[B
    //   654: invokeinterface 245 2 0
    //   659: pop
    //   660: aload_0
    //   661: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   664: bipush 6
    //   666: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   669: goto -420 -> 249
    //   672: iload_2
    //   673: bipush 9
    //   675: if_icmpne +15 -> 690
    //   678: aload_0
    //   679: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   682: bipush 6
    //   684: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   687: goto -438 -> 249
    //   690: iload_2
    //   691: bipush 19
    //   693: if_icmpne +21 -> 714
    //   696: aload_1
    //   697: invokeinterface 247 1 0
    //   702: aload_0
    //   703: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   706: bipush 6
    //   708: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   711: goto -462 -> 249
    //   714: iload_2
    //   715: bipush 17
    //   717: if_icmpne +58 -> 775
    //   720: aload_0
    //   721: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   724: invokevirtual 167	com/jcraft/jsch/Buffer:a	()I
    //   727: newarray <illegal type>
    //   729: astore 7
    //   731: aload_0
    //   732: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   735: aload 7
    //   737: invokevirtual 188	com/jcraft/jsch/Buffer:d	([B)V
    //   740: aload_1
    //   741: aload 7
    //   743: invokeinterface 248 2 0
    //   748: istore 6
    //   750: aload_0
    //   751: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   754: astore_1
    //   755: iload 6
    //   757: ifeq +12 -> 769
    //   760: aload_1
    //   761: iload 4
    //   763: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   766: goto -517 -> 249
    //   769: iconst_5
    //   770: istore 4
    //   772: goto -12 -> 760
    //   775: aload_0
    //   776: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   779: aload_0
    //   780: getfield 71	com/jcraft/jsch/ChannelAgentForwarding:M	Lcom/jcraft/jsch/Buffer;
    //   783: invokevirtual 167	com/jcraft/jsch/Buffer:a	()I
    //   786: iconst_1
    //   787: isub
    //   788: invokevirtual 250	com/jcraft/jsch/Buffer:b	(I)V
    //   791: aload_0
    //   792: getfield 77	com/jcraft/jsch/ChannelAgentForwarding:P	Lcom/jcraft/jsch/Buffer;
    //   795: iconst_5
    //   796: invokevirtual 120	com/jcraft/jsch/Buffer:a	(B)V
    //   799: goto -550 -> 249
    //   802: astore 11
    //   804: goto -272 -> 532
    //   807: aconst_null
    //   808: astore_1
    //   809: goto -352 -> 457
    //   812: iload_3
    //   813: iconst_1
    //   814: iadd
    //   815: istore_3
    //   816: goto -596 -> 220
    //   819: iload_2
    //   820: iconst_1
    //   821: iadd
    //   822: istore_2
    //   823: goto -584 -> 239
    //   826: iload_2
    //   827: iconst_1
    //   828: iadd
    //   829: istore_2
    //   830: goto -400 -> 430
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	833	0	this	ChannelAgentForwarding
    //   0	833	1	paramArrayOfByte	byte[]
    //   0	833	2	paramInt1	int
    //   0	833	3	paramInt2	int
    //   2	769	4	b	byte
    //   5	232	5	i	int
    //   604	152	6	bool	boolean
    //   82	255	7	localObject1	Object
    //   354	5	7	localObject2	Object
    //   407	335	7	arrayOfByte1	byte[]
    //   423	193	8	localVector	java.util.Vector
    //   183	393	9	localUserInfo	UserInfo
    //   398	98	10	arrayOfByte2	byte[]
    //   582	16	11	localObject3	Object
    //   802	1	11	localJSchException	JSchException
    // Exception table:
    //   from	to	target	type
    //   166	172	273	com/jcraft/jsch/JSchException
    //   220	236	354	finally
    //   239	249	354	finally
    //   286	302	354	finally
    //   309	324	354	finally
    //   332	351	354	finally
    //   356	358	354	finally
    //   430	439	614	finally
    //   441	444	614	finally
    //   473	492	614	finally
    //   495	518	614	finally
    //   523	532	614	finally
    //   532	541	614	finally
    //   544	584	614	finally
    //   589	596	614	finally
    //   596	606	614	finally
    //   615	618	614	finally
    //   596	606	802	com/jcraft/jsch/JSchException
  }
  
  void e()
  {
    super.e();
    f();
  }
  
  public void run()
  {
    try
    {
      k();
      return;
    }
    catch (Exception localException)
    {
      n = true;
      h();
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelAgentForwarding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */