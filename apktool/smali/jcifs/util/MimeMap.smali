.class public Ljcifs/util/MimeMap;
.super Ljava/lang/Object;


# static fields
.field private static final IN_SIZE:I = 0x1b58

.field private static final ST_COMM:I = 0x2

.field private static final ST_EXT:I = 0x5

.field private static final ST_GAP:I = 0x4

.field private static final ST_START:I = 0x1

.field private static final ST_TYPE:I = 0x3


# instance fields
.field private in:[B

.field private inLen:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x1b58

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [B

    iput-object v0, p0, Ljcifs/util/MimeMap;->in:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "jcifs/util/mime.map"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/MimeMap;->inLen:I

    :goto_0
    iget-object v1, p0, Ljcifs/util/MimeMap;->in:[B

    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    rsub-int v3, v3, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    add-int/2addr v1, v2

    iput v1, p0, Ljcifs/util/MimeMap;->inLen:I

    goto :goto_0

    :cond_0
    iget v1, p0, Ljcifs/util/MimeMap;->inLen:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    iget v1, p0, Ljcifs/util/MimeMap;->inLen:I

    if-ne v1, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading jcifs/util/mime.map resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    invoke-virtual {p0, p1, v0}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v0, 0x80

    new-array v5, v0, [B

    const/16 v0, 0x10

    new-array v6, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    iget v4, p0, Ljcifs/util/MimeMap;->inLen:I

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Ljcifs/util/MimeMap;->in:[B

    aget-byte v8, v4, v0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v4, 0x20

    if-eq v8, v4, :cond_0

    const/16 v4, 0x9

    if-eq v8, v4, :cond_0

    const/16 v3, 0x23

    if-ne v8, v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    :goto_2
    const/16 v3, 0x20

    if-eq v8, v3, :cond_2

    const/16 v3, 0x9

    if-ne v8, v3, :cond_3

    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aput-byte v8, v5, v2

    move v2, v3

    move v3, v4

    goto :goto_1

    :pswitch_1
    const/16 v4, 0xa

    if-ne v8, v4, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x20

    if-eq v8, v4, :cond_0

    const/16 v4, 0x9

    if-eq v8, v4, :cond_0

    const/4 v3, 0x5

    :pswitch_3
    sparse-switch v8, :sswitch_data_0

    add-int/lit8 v4, v1, 0x1

    aput-byte v8, v6, v1

    move v1, v4

    goto :goto_1

    :sswitch_0
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_4

    array-length v9, v7

    if-ne v1, v9, :cond_4

    aget-byte v9, v6, v4

    aget-byte v10, v7, v4

    if-ne v9, v10, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    array-length v1, v7

    if-ne v4, v1, :cond_6

    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ASCII"

    invoke-direct {p2, v5, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :cond_5
    return-object p2

    :cond_6
    const/16 v1, 0x23

    if-ne v8, v1, :cond_7

    const/4 v1, 0x2

    :goto_4
    const/4 v3, 0x0

    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_1

    :cond_7
    const/16 v1, 0xa

    if-ne v8, v1, :cond_8

    const/4 v2, 0x0

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_4

    :pswitch_4
    move v4, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_0
    .end sparse-switch
.end method
