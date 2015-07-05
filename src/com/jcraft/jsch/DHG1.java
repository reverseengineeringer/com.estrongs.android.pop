package com.jcraft.jsch;

import java.io.PrintStream;

public class DHG1
  extends KeyExchange
{
  static final byte[] a = { 2 };
  static final byte[] b;
  DH c;
  byte[] d;
  byte[] e;
  byte[] f;
  byte[] g;
  byte[] h;
  private int v = 0;
  private int w;
  private Buffer x;
  private Packet y;
  
  static
  {
    byte[] arrayOfByte = new byte[''];
    arrayOfByte[1] = -1;
    arrayOfByte[2] = -1;
    arrayOfByte[3] = -1;
    arrayOfByte[4] = -1;
    arrayOfByte[5] = -1;
    arrayOfByte[6] = -1;
    arrayOfByte[7] = -1;
    arrayOfByte[8] = -1;
    arrayOfByte[9] = -55;
    arrayOfByte[10] = 15;
    arrayOfByte[11] = -38;
    arrayOfByte[12] = -94;
    arrayOfByte[13] = 33;
    arrayOfByte[14] = 104;
    arrayOfByte[15] = -62;
    arrayOfByte[16] = 52;
    arrayOfByte[17] = -60;
    arrayOfByte[18] = -58;
    arrayOfByte[19] = 98;
    arrayOfByte[20] = -117;
    arrayOfByte[21] = Byte.MIN_VALUE;
    arrayOfByte[22] = -36;
    arrayOfByte[23] = 28;
    arrayOfByte[24] = -47;
    arrayOfByte[25] = 41;
    arrayOfByte[26] = 2;
    arrayOfByte[27] = 78;
    arrayOfByte[28] = 8;
    arrayOfByte[29] = -118;
    arrayOfByte[30] = 103;
    arrayOfByte[31] = -52;
    arrayOfByte[32] = 116;
    arrayOfByte[33] = 2;
    arrayOfByte[34] = 11;
    arrayOfByte[35] = -66;
    arrayOfByte[36] = -90;
    arrayOfByte[37] = 59;
    arrayOfByte[38] = 19;
    arrayOfByte[39] = -101;
    arrayOfByte[40] = 34;
    arrayOfByte[41] = 81;
    arrayOfByte[42] = 74;
    arrayOfByte[43] = 8;
    arrayOfByte[44] = 121;
    arrayOfByte[45] = -114;
    arrayOfByte[46] = 52;
    arrayOfByte[47] = 4;
    arrayOfByte[48] = -35;
    arrayOfByte[49] = -17;
    arrayOfByte[50] = -107;
    arrayOfByte[51] = 25;
    arrayOfByte[52] = -77;
    arrayOfByte[53] = -51;
    arrayOfByte[54] = 58;
    arrayOfByte[55] = 67;
    arrayOfByte[56] = 27;
    arrayOfByte[57] = 48;
    arrayOfByte[58] = 43;
    arrayOfByte[59] = 10;
    arrayOfByte[60] = 109;
    arrayOfByte[61] = -14;
    arrayOfByte[62] = 95;
    arrayOfByte[63] = 20;
    arrayOfByte[64] = 55;
    arrayOfByte[65] = 79;
    arrayOfByte[66] = -31;
    arrayOfByte[67] = 53;
    arrayOfByte[68] = 109;
    arrayOfByte[69] = 109;
    arrayOfByte[70] = 81;
    arrayOfByte[71] = -62;
    arrayOfByte[72] = 69;
    arrayOfByte[73] = -28;
    arrayOfByte[74] = -123;
    arrayOfByte[75] = -75;
    arrayOfByte[76] = 118;
    arrayOfByte[77] = 98;
    arrayOfByte[78] = 94;
    arrayOfByte[79] = 126;
    arrayOfByte[80] = -58;
    arrayOfByte[81] = -12;
    arrayOfByte[82] = 76;
    arrayOfByte[83] = 66;
    arrayOfByte[84] = -23;
    arrayOfByte[85] = -90;
    arrayOfByte[86] = 55;
    arrayOfByte[87] = -19;
    arrayOfByte[88] = 107;
    arrayOfByte[89] = 11;
    arrayOfByte[90] = -1;
    arrayOfByte[91] = 92;
    arrayOfByte[92] = -74;
    arrayOfByte[93] = -12;
    arrayOfByte[94] = 6;
    arrayOfByte[95] = -73;
    arrayOfByte[96] = -19;
    arrayOfByte[97] = -18;
    arrayOfByte[98] = 56;
    arrayOfByte[99] = 107;
    arrayOfByte[100] = -5;
    arrayOfByte[101] = 90;
    arrayOfByte[102] = -119;
    arrayOfByte[103] = -97;
    arrayOfByte[104] = -91;
    arrayOfByte[105] = -82;
    arrayOfByte[106] = -97;
    arrayOfByte[107] = 36;
    arrayOfByte[108] = 17;
    arrayOfByte[109] = 124;
    arrayOfByte[110] = 75;
    arrayOfByte[111] = 31;
    arrayOfByte[112] = -26;
    arrayOfByte[113] = 73;
    arrayOfByte[114] = 40;
    arrayOfByte[115] = 102;
    arrayOfByte[116] = 81;
    arrayOfByte[117] = -20;
    arrayOfByte[118] = -26;
    arrayOfByte[119] = 83;
    arrayOfByte[120] = -127;
    arrayOfByte[121] = -1;
    arrayOfByte[122] = -1;
    arrayOfByte[123] = -1;
    arrayOfByte[124] = -1;
    arrayOfByte[125] = -1;
    arrayOfByte[126] = -1;
    arrayOfByte[127] = -1;
    arrayOfByte[''] = -1;
    b = arrayOfByte;
  }
  
  public String a()
  {
    if (v == 1) {
      return "DSA";
    }
    return "RSA";
  }
  
  public void a(Session paramSession, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    q = paramSession;
    d = paramArrayOfByte1;
    e = paramArrayOfByte2;
    f = paramArrayOfByte3;
    g = paramArrayOfByte4;
    try
    {
      r = ((HASH)Class.forName(paramSession.d("sha-1")).newInstance());
      r.a();
      x = new Buffer();
      y = new Packet(x);
    }
    catch (Exception paramArrayOfByte1)
    {
      for (;;)
      {
        try
        {
          c = ((DH)Class.forName(paramSession.d("dh")).newInstance());
          c.a();
          c.a(b);
          c.b(a);
          h = c.b();
          y.a();
          x.a((byte)30);
          x.c(h);
          paramSession.b(y);
          if (JSch.d().a(1))
          {
            JSch.d().a(1, "SSH_MSG_KEXDH_INIT sent");
            JSch.d().a(1, "expecting SSH_MSG_KEXDH_REPLY");
          }
          w = 31;
          return;
        }
        catch (Exception paramSession)
        {
          throw paramSession;
        }
        paramArrayOfByte1 = paramArrayOfByte1;
        System.err.println(paramArrayOfByte1);
      }
    }
  }
  
  /* Error */
  public boolean a(Buffer paramBuffer)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 135	com/jcraft/jsch/DHG1:w	I
    //   4: tableswitch	default:+20->24, 31:+22->26
    //   24: iconst_0
    //   25: ireturn
    //   26: aload_1
    //   27: invokevirtual 151	com/jcraft/jsch/Buffer:d	()I
    //   30: pop
    //   31: aload_1
    //   32: invokevirtual 153	com/jcraft/jsch/Buffer:g	()I
    //   35: pop
    //   36: aload_1
    //   37: invokevirtual 153	com/jcraft/jsch/Buffer:g	()I
    //   40: istore_2
    //   41: iload_2
    //   42: bipush 31
    //   44: if_icmpeq +27 -> 71
    //   47: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   50: new 155	java/lang/StringBuilder
    //   53: dup
    //   54: ldc -99
    //   56: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   59: iload_2
    //   60: invokevirtual 164	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   63: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokevirtual 169	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   69: iconst_0
    //   70: ireturn
    //   71: aload_0
    //   72: aload_1
    //   73: invokevirtual 172	com/jcraft/jsch/Buffer:j	()[B
    //   76: putfield 175	com/jcraft/jsch/DHG1:u	[B
    //   79: aload_1
    //   80: invokevirtual 177	com/jcraft/jsch/Buffer:h	()[B
    //   83: astore 9
    //   85: aload_1
    //   86: invokevirtual 172	com/jcraft/jsch/Buffer:j	()[B
    //   89: astore 10
    //   91: aload_0
    //   92: getfield 96	com/jcraft/jsch/DHG1:c	Lcom/jcraft/jsch/DH;
    //   95: aload 9
    //   97: invokeinterface 178 2 0
    //   102: aload_0
    //   103: aload_0
    //   104: aload_0
    //   105: getfield 96	com/jcraft/jsch/DHG1:c	Lcom/jcraft/jsch/DH;
    //   108: invokeinterface 180 1 0
    //   113: invokevirtual 183	com/jcraft/jsch/DHG1:a	([B)[B
    //   116: putfield 186	com/jcraft/jsch/DHG1:s	[B
    //   119: aload_0
    //   120: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   123: invokevirtual 189	com/jcraft/jsch/Buffer:k	()V
    //   126: aload_0
    //   127: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   130: aload_0
    //   131: getfield 49	com/jcraft/jsch/DHG1:e	[B
    //   134: invokevirtual 190	com/jcraft/jsch/Buffer:b	([B)V
    //   137: aload_0
    //   138: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   141: aload_0
    //   142: getfield 47	com/jcraft/jsch/DHG1:d	[B
    //   145: invokevirtual 190	com/jcraft/jsch/Buffer:b	([B)V
    //   148: aload_0
    //   149: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   152: aload_0
    //   153: getfield 53	com/jcraft/jsch/DHG1:g	[B
    //   156: invokevirtual 190	com/jcraft/jsch/Buffer:b	([B)V
    //   159: aload_0
    //   160: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   163: aload_0
    //   164: getfield 51	com/jcraft/jsch/DHG1:f	[B
    //   167: invokevirtual 190	com/jcraft/jsch/Buffer:b	([B)V
    //   170: aload_0
    //   171: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   174: aload_0
    //   175: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   178: invokevirtual 190	com/jcraft/jsch/Buffer:b	([B)V
    //   181: aload_0
    //   182: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   185: aload_0
    //   186: getfield 107	com/jcraft/jsch/DHG1:h	[B
    //   189: invokevirtual 113	com/jcraft/jsch/Buffer:c	([B)V
    //   192: aload_0
    //   193: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   196: aload 9
    //   198: invokevirtual 113	com/jcraft/jsch/Buffer:c	([B)V
    //   201: aload_0
    //   202: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   205: aload_0
    //   206: getfield 186	com/jcraft/jsch/DHG1:s	[B
    //   209: invokevirtual 113	com/jcraft/jsch/Buffer:c	([B)V
    //   212: aload_0
    //   213: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   216: invokevirtual 192	com/jcraft/jsch/Buffer:a	()I
    //   219: newarray <illegal type>
    //   221: astore_1
    //   222: aload_0
    //   223: getfield 83	com/jcraft/jsch/DHG1:x	Lcom/jcraft/jsch/Buffer;
    //   226: aload_1
    //   227: invokevirtual 194	com/jcraft/jsch/Buffer:d	([B)V
    //   230: aload_0
    //   231: getfield 76	com/jcraft/jsch/DHG1:r	Lcom/jcraft/jsch/HASH;
    //   234: aload_1
    //   235: iconst_0
    //   236: aload_1
    //   237: arraylength
    //   238: invokeinterface 197 4 0
    //   243: aload_0
    //   244: aload_0
    //   245: getfield 76	com/jcraft/jsch/DHG1:r	Lcom/jcraft/jsch/HASH;
    //   248: invokeinterface 198 1 0
    //   253: putfield 201	com/jcraft/jsch/DHG1:t	[B
    //   256: aload_0
    //   257: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   260: iconst_0
    //   261: baload
    //   262: bipush 24
    //   264: ishl
    //   265: ldc -54
    //   267: iand
    //   268: aload_0
    //   269: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   272: iconst_1
    //   273: baload
    //   274: bipush 16
    //   276: ishl
    //   277: ldc -53
    //   279: iand
    //   280: ior
    //   281: aload_0
    //   282: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   285: iconst_2
    //   286: baload
    //   287: bipush 8
    //   289: ishl
    //   290: ldc -52
    //   292: iand
    //   293: ior
    //   294: aload_0
    //   295: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   298: iconst_3
    //   299: baload
    //   300: sipush 255
    //   303: iand
    //   304: ior
    //   305: istore_2
    //   306: aload_0
    //   307: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   310: iconst_4
    //   311: iload_2
    //   312: invokestatic 209	com/jcraft/jsch/Util:c	([BII)Ljava/lang/String;
    //   315: astore_1
    //   316: iload_2
    //   317: iconst_4
    //   318: iadd
    //   319: istore_2
    //   320: aload_1
    //   321: ldc -45
    //   323: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   326: ifeq +351 -> 677
    //   329: aload_0
    //   330: iconst_0
    //   331: putfield 33	com/jcraft/jsch/DHG1:v	I
    //   334: aload_0
    //   335: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   338: astore_1
    //   339: iload_2
    //   340: iconst_1
    //   341: iadd
    //   342: istore_3
    //   343: aload_1
    //   344: iload_2
    //   345: baload
    //   346: istore_2
    //   347: aload_0
    //   348: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   351: astore_1
    //   352: iload_3
    //   353: iconst_1
    //   354: iadd
    //   355: istore 5
    //   357: aload_1
    //   358: iload_3
    //   359: baload
    //   360: istore_3
    //   361: aload_0
    //   362: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   365: astore_1
    //   366: iload 5
    //   368: iconst_1
    //   369: iadd
    //   370: istore 4
    //   372: aload_1
    //   373: iload 5
    //   375: baload
    //   376: istore 6
    //   378: aload_0
    //   379: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   382: astore_1
    //   383: iload 4
    //   385: iconst_1
    //   386: iadd
    //   387: istore 5
    //   389: iload_2
    //   390: bipush 24
    //   392: ishl
    //   393: ldc -54
    //   395: iand
    //   396: iload_3
    //   397: bipush 16
    //   399: ishl
    //   400: ldc -53
    //   402: iand
    //   403: ior
    //   404: iload 6
    //   406: bipush 8
    //   408: ishl
    //   409: ldc -52
    //   411: iand
    //   412: ior
    //   413: aload_1
    //   414: iload 4
    //   416: baload
    //   417: sipush 255
    //   420: iand
    //   421: ior
    //   422: istore_2
    //   423: iload_2
    //   424: newarray <illegal type>
    //   426: astore 11
    //   428: aload_0
    //   429: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   432: iload 5
    //   434: aload 11
    //   436: iconst_0
    //   437: iload_2
    //   438: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   441: iload_2
    //   442: iload 5
    //   444: iadd
    //   445: istore_2
    //   446: aload_0
    //   447: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   450: astore_1
    //   451: iload_2
    //   452: iconst_1
    //   453: iadd
    //   454: istore_3
    //   455: aload_1
    //   456: iload_2
    //   457: baload
    //   458: istore_2
    //   459: aload_0
    //   460: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   463: astore_1
    //   464: iload_3
    //   465: iconst_1
    //   466: iadd
    //   467: istore 5
    //   469: aload_1
    //   470: iload_3
    //   471: baload
    //   472: istore_3
    //   473: aload_0
    //   474: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   477: astore_1
    //   478: iload 5
    //   480: iconst_1
    //   481: iadd
    //   482: istore 4
    //   484: aload_1
    //   485: iload 5
    //   487: baload
    //   488: istore 6
    //   490: aload_0
    //   491: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   494: astore_1
    //   495: iload 4
    //   497: iconst_1
    //   498: iadd
    //   499: istore 5
    //   501: iload_2
    //   502: bipush 24
    //   504: ishl
    //   505: ldc -54
    //   507: iand
    //   508: iload_3
    //   509: bipush 16
    //   511: ishl
    //   512: ldc -53
    //   514: iand
    //   515: ior
    //   516: iload 6
    //   518: bipush 8
    //   520: ishl
    //   521: ldc -52
    //   523: iand
    //   524: ior
    //   525: aload_1
    //   526: iload 4
    //   528: baload
    //   529: sipush 255
    //   532: iand
    //   533: ior
    //   534: istore_2
    //   535: iload_2
    //   536: newarray <illegal type>
    //   538: astore 12
    //   540: aload_0
    //   541: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   544: iload 5
    //   546: aload 12
    //   548: iconst_0
    //   549: iload_2
    //   550: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   553: aload_0
    //   554: getfield 45	com/jcraft/jsch/DHG1:q	Lcom/jcraft/jsch/Session;
    //   557: ldc -33
    //   559: invokevirtual 60	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   562: invokestatic 66	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   565: invokevirtual 70	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   568: checkcast 225	com/jcraft/jsch/SignatureRSA
    //   571: astore_1
    //   572: aload_1
    //   573: invokeinterface 226 1 0
    //   578: aload_1
    //   579: aload 11
    //   581: aload 12
    //   583: invokeinterface 229 3 0
    //   588: aload_1
    //   589: aload_0
    //   590: getfield 201	com/jcraft/jsch/DHG1:t	[B
    //   593: invokeinterface 230 2 0
    //   598: aload_1
    //   599: aload 10
    //   601: invokeinterface 233 2 0
    //   606: istore 8
    //   608: iload 8
    //   610: istore 7
    //   612: invokestatic 121	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   615: iconst_1
    //   616: invokeinterface 126 2 0
    //   621: ifeq +33 -> 654
    //   624: invokestatic 121	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   627: iconst_1
    //   628: new 155	java/lang/StringBuilder
    //   631: dup
    //   632: ldc -21
    //   634: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   637: iload 8
    //   639: invokevirtual 238	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   642: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   645: invokeinterface 131 3 0
    //   650: iload 8
    //   652: istore 7
    //   654: aload_0
    //   655: iconst_0
    //   656: putfield 135	com/jcraft/jsch/DHG1:w	I
    //   659: iload 7
    //   661: ireturn
    //   662: astore 9
    //   664: aconst_null
    //   665: astore_1
    //   666: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   669: aload 9
    //   671: invokevirtual 147	java/io/PrintStream:println	(Ljava/lang/Object;)V
    //   674: goto -96 -> 578
    //   677: aload_1
    //   678: ldc -16
    //   680: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   683: ifeq +574 -> 1257
    //   686: aload_0
    //   687: iconst_1
    //   688: putfield 33	com/jcraft/jsch/DHG1:v	I
    //   691: aload_0
    //   692: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   695: astore_1
    //   696: iload_2
    //   697: iconst_1
    //   698: iadd
    //   699: istore_3
    //   700: aload_1
    //   701: iload_2
    //   702: baload
    //   703: istore_2
    //   704: aload_0
    //   705: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   708: astore_1
    //   709: iload_3
    //   710: iconst_1
    //   711: iadd
    //   712: istore 5
    //   714: aload_1
    //   715: iload_3
    //   716: baload
    //   717: istore_3
    //   718: aload_0
    //   719: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   722: astore_1
    //   723: iload 5
    //   725: iconst_1
    //   726: iadd
    //   727: istore 4
    //   729: aload_1
    //   730: iload 5
    //   732: baload
    //   733: istore 6
    //   735: aload_0
    //   736: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   739: astore_1
    //   740: iload 4
    //   742: iconst_1
    //   743: iadd
    //   744: istore 5
    //   746: iload_2
    //   747: bipush 24
    //   749: ishl
    //   750: ldc -54
    //   752: iand
    //   753: iload_3
    //   754: bipush 16
    //   756: ishl
    //   757: ldc -53
    //   759: iand
    //   760: ior
    //   761: iload 6
    //   763: bipush 8
    //   765: ishl
    //   766: ldc -52
    //   768: iand
    //   769: ior
    //   770: aload_1
    //   771: iload 4
    //   773: baload
    //   774: sipush 255
    //   777: iand
    //   778: ior
    //   779: istore_2
    //   780: iload_2
    //   781: newarray <illegal type>
    //   783: astore 11
    //   785: aload_0
    //   786: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   789: iload 5
    //   791: aload 11
    //   793: iconst_0
    //   794: iload_2
    //   795: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   798: iload_2
    //   799: iload 5
    //   801: iadd
    //   802: istore_2
    //   803: aload_0
    //   804: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   807: astore_1
    //   808: iload_2
    //   809: iconst_1
    //   810: iadd
    //   811: istore_3
    //   812: aload_1
    //   813: iload_2
    //   814: baload
    //   815: istore_2
    //   816: aload_0
    //   817: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   820: astore_1
    //   821: iload_3
    //   822: iconst_1
    //   823: iadd
    //   824: istore 5
    //   826: aload_1
    //   827: iload_3
    //   828: baload
    //   829: istore_3
    //   830: aload_0
    //   831: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   834: astore_1
    //   835: iload 5
    //   837: iconst_1
    //   838: iadd
    //   839: istore 4
    //   841: aload_1
    //   842: iload 5
    //   844: baload
    //   845: istore 6
    //   847: aload_0
    //   848: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   851: astore_1
    //   852: iload 4
    //   854: iconst_1
    //   855: iadd
    //   856: istore 5
    //   858: iload_2
    //   859: bipush 24
    //   861: ishl
    //   862: ldc -54
    //   864: iand
    //   865: iload_3
    //   866: bipush 16
    //   868: ishl
    //   869: ldc -53
    //   871: iand
    //   872: ior
    //   873: iload 6
    //   875: bipush 8
    //   877: ishl
    //   878: ldc -52
    //   880: iand
    //   881: ior
    //   882: aload_1
    //   883: iload 4
    //   885: baload
    //   886: sipush 255
    //   889: iand
    //   890: ior
    //   891: istore_2
    //   892: iload_2
    //   893: newarray <illegal type>
    //   895: astore 12
    //   897: aload_0
    //   898: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   901: iload 5
    //   903: aload 12
    //   905: iconst_0
    //   906: iload_2
    //   907: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   910: iload_2
    //   911: iload 5
    //   913: iadd
    //   914: istore_2
    //   915: aload_0
    //   916: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   919: astore_1
    //   920: iload_2
    //   921: iconst_1
    //   922: iadd
    //   923: istore_3
    //   924: aload_1
    //   925: iload_2
    //   926: baload
    //   927: istore_2
    //   928: aload_0
    //   929: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   932: astore_1
    //   933: iload_3
    //   934: iconst_1
    //   935: iadd
    //   936: istore 5
    //   938: aload_1
    //   939: iload_3
    //   940: baload
    //   941: istore_3
    //   942: aload_0
    //   943: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   946: astore_1
    //   947: iload 5
    //   949: iconst_1
    //   950: iadd
    //   951: istore 4
    //   953: aload_1
    //   954: iload 5
    //   956: baload
    //   957: istore 6
    //   959: aload_0
    //   960: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   963: astore_1
    //   964: iload 4
    //   966: iconst_1
    //   967: iadd
    //   968: istore 5
    //   970: iload_2
    //   971: bipush 24
    //   973: ishl
    //   974: ldc -54
    //   976: iand
    //   977: iload_3
    //   978: bipush 16
    //   980: ishl
    //   981: ldc -53
    //   983: iand
    //   984: ior
    //   985: iload 6
    //   987: bipush 8
    //   989: ishl
    //   990: ldc -52
    //   992: iand
    //   993: ior
    //   994: aload_1
    //   995: iload 4
    //   997: baload
    //   998: sipush 255
    //   1001: iand
    //   1002: ior
    //   1003: istore_2
    //   1004: iload_2
    //   1005: newarray <illegal type>
    //   1007: astore 13
    //   1009: aload_0
    //   1010: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1013: iload 5
    //   1015: aload 13
    //   1017: iconst_0
    //   1018: iload_2
    //   1019: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   1022: iload_2
    //   1023: iload 5
    //   1025: iadd
    //   1026: istore_2
    //   1027: aload_0
    //   1028: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1031: astore_1
    //   1032: iload_2
    //   1033: iconst_1
    //   1034: iadd
    //   1035: istore_3
    //   1036: aload_1
    //   1037: iload_2
    //   1038: baload
    //   1039: istore_2
    //   1040: aload_0
    //   1041: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1044: astore_1
    //   1045: iload_3
    //   1046: iconst_1
    //   1047: iadd
    //   1048: istore 5
    //   1050: aload_1
    //   1051: iload_3
    //   1052: baload
    //   1053: istore_3
    //   1054: aload_0
    //   1055: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1058: astore_1
    //   1059: iload 5
    //   1061: iconst_1
    //   1062: iadd
    //   1063: istore 4
    //   1065: aload_1
    //   1066: iload 5
    //   1068: baload
    //   1069: istore 6
    //   1071: aload_0
    //   1072: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1075: astore_1
    //   1076: iload 4
    //   1078: iconst_1
    //   1079: iadd
    //   1080: istore 5
    //   1082: iload_2
    //   1083: bipush 24
    //   1085: ishl
    //   1086: ldc -54
    //   1088: iand
    //   1089: iload_3
    //   1090: bipush 16
    //   1092: ishl
    //   1093: ldc -53
    //   1095: iand
    //   1096: ior
    //   1097: iload 6
    //   1099: bipush 8
    //   1101: ishl
    //   1102: ldc -52
    //   1104: iand
    //   1105: ior
    //   1106: aload_1
    //   1107: iload 4
    //   1109: baload
    //   1110: sipush 255
    //   1113: iand
    //   1114: ior
    //   1115: istore_2
    //   1116: iload_2
    //   1117: newarray <illegal type>
    //   1119: astore 14
    //   1121: aload_0
    //   1122: getfield 175	com/jcraft/jsch/DHG1:u	[B
    //   1125: iload 5
    //   1127: aload 14
    //   1129: iconst_0
    //   1130: iload_2
    //   1131: invokestatic 221	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   1134: aload_0
    //   1135: getfield 45	com/jcraft/jsch/DHG1:q	Lcom/jcraft/jsch/Session;
    //   1138: ldc -14
    //   1140: invokevirtual 60	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1143: invokestatic 66	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   1146: invokevirtual 70	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   1149: checkcast 244	com/jcraft/jsch/SignatureDSA
    //   1152: astore_1
    //   1153: aload_1
    //   1154: invokeinterface 245 1 0
    //   1159: aload_1
    //   1160: aload 14
    //   1162: aload 11
    //   1164: aload 12
    //   1166: aload 13
    //   1168: invokeinterface 248 5 0
    //   1173: aload_1
    //   1174: aload_0
    //   1175: getfield 201	com/jcraft/jsch/DHG1:t	[B
    //   1178: invokeinterface 249 2 0
    //   1183: aload_1
    //   1184: aload 10
    //   1186: invokeinterface 250 2 0
    //   1191: istore 8
    //   1193: iload 8
    //   1195: istore 7
    //   1197: invokestatic 121	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1200: iconst_1
    //   1201: invokeinterface 126 2 0
    //   1206: ifeq -552 -> 654
    //   1209: invokestatic 121	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1212: iconst_1
    //   1213: new 155	java/lang/StringBuilder
    //   1216: dup
    //   1217: ldc -4
    //   1219: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1222: iload 8
    //   1224: invokevirtual 238	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   1227: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1230: invokeinterface 131 3 0
    //   1235: iload 8
    //   1237: istore 7
    //   1239: goto -585 -> 654
    //   1242: astore 9
    //   1244: aconst_null
    //   1245: astore_1
    //   1246: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   1249: aload 9
    //   1251: invokevirtual 147	java/io/PrintStream:println	(Ljava/lang/Object;)V
    //   1254: goto -95 -> 1159
    //   1257: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   1260: ldc -2
    //   1262: invokevirtual 169	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1265: iconst_0
    //   1266: istore 7
    //   1268: goto -614 -> 654
    //   1271: astore 9
    //   1273: goto -27 -> 1246
    //   1276: astore 9
    //   1278: goto -612 -> 666
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1281	0	this	DHG1
    //   0	1281	1	paramBuffer	Buffer
    //   40	1091	2	i	int
    //   342	751	3	j	int
    //   370	738	4	k	int
    //   355	771	5	m	int
    //   376	726	6	n	int
    //   610	657	7	bool1	boolean
    //   606	630	8	bool2	boolean
    //   83	114	9	arrayOfByte1	byte[]
    //   662	8	9	localException1	Exception
    //   1242	8	9	localException2	Exception
    //   1271	1	9	localException3	Exception
    //   1276	1	9	localException4	Exception
    //   89	1096	10	arrayOfByte2	byte[]
    //   426	737	11	arrayOfByte3	byte[]
    //   538	627	12	arrayOfByte4	byte[]
    //   1007	160	13	arrayOfByte5	byte[]
    //   1119	42	14	arrayOfByte6	byte[]
    // Exception table:
    //   from	to	target	type
    //   553	572	662	java/lang/Exception
    //   1134	1153	1242	java/lang/Exception
    //   1153	1159	1271	java/lang/Exception
    //   572	578	1276	java/lang/Exception
  }
  
  public int b()
  {
    return w;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.DHG1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */