.class Lcom/c/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/c;


# instance fields
.field private a:I

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/c/a/a/j;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    iput p1, p0, Lcom/c/a/a/j;->a:I

    iput-object v1, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    iput-object v1, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    return-void
.end method

.method static a([BI)J
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v1, 0x8

    shl-long/2addr v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method static a(Lb/b/c;Lb/b/c;)Lb/b/c;
    .locals 4

    invoke-interface {p1}, Lb/b/c;->a()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v2, v1, v0

    const/16 v3, 0x48

    if-eq v2, v3, :cond_0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method static a(B[BI)Lcom/c/a/a/j;
    .locals 2

    new-instance v0, Lcom/c/a/a/j;

    and-int/lit16 v1, p0, 0xff

    invoke-direct {v0, v1}, Lcom/c/a/a/j;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;[BI)Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/c/a/a/j;[BI)Lcom/c/a/a/j;
    .locals 10

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_9

    aget-byte v2, p1, p2

    and-int/lit16 v3, v2, 0xff

    and-int/lit16 v2, v3, 0xc0

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v3, 0xc0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    invoke-static {v2, v4}, Lcom/c/a/a/v;->a(BB)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x5

    new-array v4, v4, [B

    add-int/lit8 v5, p2, 0x3

    array-length v6, v4

    invoke-static {p1, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/c/a/a/v;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    invoke-static {v2, v4}, Lcom/c/a/a/v;->a(BB)I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    new-array v4, v4, [B

    add-int/lit8 v5, p2, 0x3

    array-length v6, v4

    invoke-static {p1, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x42

    if-ne v3, v5, :cond_2

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v4, v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    const-string v7, "iso-8859-1"

    invoke-direct {v5, v4, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x44

    if-ne v3, v5, :cond_3

    invoke-static {v4}, Lcom/c/a/a/j;->b([B)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/16 v5, 0x4d

    if-ne v3, v5, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v3, "received AUTH_CHALLENGE"

    invoke-static {v3}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    const/16 v5, 0x4e

    if-ne v3, v5, :cond_7

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v3, "received AUTH_RESPONSE"

    invoke-static {v3}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    const/4 v2, 0x2

    new-instance v4, Ljava/lang/Byte;

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    const/4 v2, 0x5

    add-int/lit8 v4, p2, 0x1

    invoke-static {p1, v4}, Lcom/c/a/a/j;->a([BI)J

    move-result-wide v4

    const/16 v6, 0xc4

    if-ne v3, v6, :cond_8

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v3, v6}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v3, v6}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_a

    const-string v1, "read headers"

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    :cond_a
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method static a(Lb/b/c;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/c/a/a/j;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal HeaderSet type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/c/a/a/j;

    iget v0, p0, Lcom/c/a/a/j;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal HeaderSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/io/OutputStream;II)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    if-ltz p2, :cond_0

    const v1, 0xffff

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "very large data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x1

    invoke-static {p2}, Lcom/c/a/a/v;->a(I)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/c/a/a/v;->b(I)B

    move-result v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;IJ)V
    .locals 8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    const/4 v0, 0x5

    new-array v0, v0, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    ushr-long v2, p2, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    const-string v0, "iso-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/util/Calendar;)V
    .locals 2

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/c/a/a/j;->c(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/c/a/a/j;->d(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/c/a/a/j;->d(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x54

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/c/a/a/j;->d(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/c/a/a/j;->d(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/c/a/a/j;->d(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static b(Lb/b/c;)Lcom/c/a/a/j;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/c/a/a/j;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal HeaderSet type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/c/a/a/j;

    move-object v0, p0

    check-cast v0, Lcom/c/a/a/j;

    iget v0, v0, Lcom/c/a/a/j;->a:I

    invoke-direct {v1, v0}, Lcom/c/a/a/j;-><init>(I)V

    invoke-interface {p0}, Lb/b/c;->a()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget v3, v2, v0

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x49

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0, v3}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static b([BI)Lcom/c/a/a/j;
    .locals 2

    new-instance v0, Lcom/c/a/a/j;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lcom/c/a/a/j;-><init>(I)V

    invoke-static {v0, p0, p1}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;[BI)Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method static b([B)Ljava/util/Calendar;
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    array-length v0, p0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    array-length v0, p0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ISO-8601 date length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    const/16 v3, 0x54

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ISO-8601 date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    const/16 v0, 0xf

    aget-byte v0, p0, v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ISO-8601 date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected header ID in range 0 to 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reserved header ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method static b(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/c/a/a/v;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, p1, v1}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private static c(I)[B
    .locals 5

    const/4 v4, 0x4

    new-array v2, v4, [B

    const/16 v1, 0x3e8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    div-int v3, p0, v1

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    rem-int/2addr p0, v1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static c(Lb/b/c;)[B
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p0}, Lb/b/c;->a()[I

    move-result-object v3

    move v1, v0

    :goto_1
    if-eqz v3, :cond_4

    array-length v0, v3

    if-ge v1, v0, :cond_4

    aget v4, v3, v1

    const/16 v0, 0x44

    if-ne v4, v0, :cond_1

    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/16 v5, 0x13

    invoke-static {v2, v4, v5}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    invoke-static {v2, v0}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;Ljava/util/Calendar;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xc4

    if-ne v4, v0, :cond_2

    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v2, v4, v6, v7}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;IJ)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x42

    if-ne v4, v0, :cond_3

    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v4, 0xc0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v4, 0xc0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/c/a/a/j;->b(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto :goto_2

    :sswitch_1
    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v5, v0

    add-int/lit8 v5, v5, 0x3

    invoke-static {v2, v4, v5}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :sswitch_3
    invoke-interface {p0, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;IJ)V

    goto/16 :goto_2

    :cond_4
    if-eqz v3, :cond_5

    array-length v0, v3

    if-eqz v0, :cond_5

    const-string v0, "written headers"

    array-length v1, v3

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    :cond_5
    move-object v0, p0

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {v0}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/c/a/a/j;

    iget-object v0, v0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/16 v3, 0x4d

    array-length v4, v0

    add-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "written AUTH_CHALLENGE"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v0, p0

    check-cast v0, Lcom/c/a/a/j;

    invoke-virtual {v0}, Lcom/c/a/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p0, Lcom/c/a/a/j;

    iget-object v0, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/16 v3, 0x4e

    array-length v4, v0

    add-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "written AUTH_RESPONSE"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method private static d(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    div-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/c/a/a/j;->b(I)V

    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/c/a/a/j;->b(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x44

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc4

    if-ne p1, v0, :cond_2

    :cond_1
    instance-of v0, p2, Ljava/util/Calendar;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected java.util.Calendar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    and-int/lit16 v0, p1, 0xc0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xc0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    instance-of v0, p2, [B

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected java.lang.Byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected java.lang.Long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected long in range 0 to 2^32-1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method declared-synchronized a([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()[I
    .locals 5

    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/c/a/a/j;->a:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/c/a/a/j;->a:I

    return v0
.end method

.method c()Z
    .locals 3

    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x49

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method e()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method f()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/j;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
