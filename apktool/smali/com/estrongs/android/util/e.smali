.class public Lcom/estrongs/android/util/e;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field static final b:[Lorg/apache/commons/io/ByteOrderMark;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AUTO"

    aput-object v1, v0, v3

    const-string v1, "UTF-8"

    aput-object v1, v0, v4

    const-string v1, "GBK"

    aput-object v1, v0, v5

    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Windows-1252"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EUC-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EUC-JP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Shift_JIS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ISO-2022-JP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BIG5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Windows-1251"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Cp866"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ISO-8859-2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ISO-8859-3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISO-8859-4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ISO-8859-5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISO-8859-6"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ISO-8859-7"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ISO-8859-8"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ISO-8859-9"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ISO-8859-10"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ISO-8859-11"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ISO-8859-13"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ISO-8859-14"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ISO-8859-15"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ISO-8859-16"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    new-array v0, v6, [Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v5

    sput-object v0, Lcom/estrongs/android/util/e;->b:[Lorg/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "GBK"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "BIG5"

    goto :goto_0

    :cond_1
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "EUC-JP"

    goto :goto_0

    :cond_2
    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EUC-KR"

    goto :goto_0

    :cond_3
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v8, -0x1

    const/16 v5, 0x400

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    :cond_1
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v1, v3

    invoke-static {v1}, Lcom/estrongs/android/util/e;->a([I)Lorg/apache/commons/io/ByteOrderMark;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    new-array v1, v5, [B

    const/16 v0, 0x400

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    if-ge v0, v5, :cond_4

    const/4 v0, 0x0

    :try_start_4
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v8, :cond_3

    invoke-static {v1, v0}, Lcom/estrongs/android/util/e;->a([BI)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    const-string v0, "UTF-8"

    goto :goto_0

    :cond_4
    new-instance v3, Lorg/mozilla/a/a/h;

    invoke-direct {v3}, Lorg/mozilla/a/a/h;-><init>()V

    new-instance v4, Lcom/estrongs/android/util/f;

    invoke-direct {v4}, Lcom/estrongs/android/util/f;-><init>()V

    invoke-virtual {v3, v4}, Lorg/mozilla/a/a/h;->a(Lorg/mozilla/a/a/q;)V

    const/high16 v5, 0x10000

    move v0, v2

    :cond_5
    if-ge v0, v5, :cond_6

    const/4 v6, 0x0

    :try_start_5
    array-length v7, v1

    invoke-virtual {p0, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v8, :cond_6

    add-int/2addr v0, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v6, v7}, Lorg/mozilla/a/a/h;->a([BIZ)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-eqz v6, :cond_5

    :cond_6
    :goto_4
    invoke-virtual {v3}, Lorg/mozilla/a/a/h;->b()V

    invoke-virtual {v4}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    invoke-virtual {v3}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto/16 :goto_0

    :cond_8
    const-string v0, "UTF-8"

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/a;)V

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector;->a([BII)V

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->b()V

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->c()V

    return-object v1
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/util/e;->a([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIZ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/estrongs/android/util/e;->b([BI)[B

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2, v1, v5}, Lcom/estrongs/android/util/e;->b([BIZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/util/e;->b()I

    move-result v3

    const-string v1, "TW"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2, v3, v5}, Lcom/estrongs/android/util/e;->b([BIZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/estrongs/android/util/e;->a([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v2, v3, p2}, Lcom/estrongs/android/util/e;->b([BIZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    if-nez p2, :cond_0

    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private static a([I)Lorg/apache/commons/io/ByteOrderMark;
    .locals 5

    sget-object v2, Lcom/estrongs/android/util/e;->b:[Lorg/apache/commons/io/ByteOrderMark;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {p0, v0}, Lcom/estrongs/android/util/e;->a([ILorg/apache/commons/io/ByteOrderMark;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a([ILorg/apache/commons/io/ByteOrderMark;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v2

    aget v3, p0, v0

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static a([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b()I
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([BIZ)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Lorg/mozilla/a/a/h;

    invoke-direct {v2, p1}, Lorg/mozilla/a/a/h;-><init>(I)V

    new-instance v0, Lcom/estrongs/android/util/f;

    invoke-direct {v0}, Lcom/estrongs/android/util/f;-><init>()V

    invoke-virtual {v2, v0}, Lorg/mozilla/a/a/h;->a(Lorg/mozilla/a/a/q;)V

    array-length v3, p0

    invoke-virtual {v2, p0, v3, v4}, Lorg/mozilla/a/a/h;->a([BIZ)Z

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->b()V

    invoke-virtual {v0}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static b([BI)[B
    .locals 7

    const/16 v0, 0x400

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    div-int v5, v0, p1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    array-length v0, p0

    if-le v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_2

    aget-byte v1, p0, v2

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    mul-int v0, p1, v5

    new-array v0, v0, [B

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_5

    mul-int v1, v4, p1

    move v3, v1

    move v1, v2

    :goto_3
    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, p1

    if-ge v3, v6, :cond_4

    aget-byte v6, p0, v1

    aput-byte v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    move-object p0, v0

    goto :goto_0
.end method

.method public static c()V
    .locals 6

    const-string v0, "Cp866"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v1, Ljava/nio/charset/Charset;

    const-string v2, "cacheCharset"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/nio/charset/Charset;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v2, Ljava/nio/charset/Charset;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    new-instance v4, La/a/a/a/d;

    invoke-direct {v4}, La/a/a/a/d;-><init>()V

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CharsetUtil"

    const-string v1, "Can\'t find the method cacheCharset(String, Charset)"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-class v0, Ljava/nio/charset/Charset;

    const-string v1, "cacheCharset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/nio/charset/Charset;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v1, Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, La/a/a/a/d;

    invoke-direct {v4}, La/a/a/a/d;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "CharsetUtil"

    const-string v1, "Can\'t find the method cacheCharset(Charset)"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
