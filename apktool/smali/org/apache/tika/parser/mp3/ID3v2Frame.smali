.class public Lorg/apache/tika/parser/mp3/ID3v2Frame;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/parser/mp3/MP3Frame;


# static fields
.field protected static final encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;


# instance fields
.field private data:[B

.field private extendedHeader:[B

.field private flags:I

.field private length:I

.field private majorVersion:I

.field private minorVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    new-instance v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    const-string v2, "GBK"

    invoke-direct {v1, v2, v5, v4}, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;-><init>(Ljava/lang/String;ZLorg/apache/tika/parser/mp3/ID3v2Frame$1;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    const-string v2, "UTF-16"

    invoke-direct {v1, v2, v6, v4}, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;-><init>(Ljava/lang/String;ZLorg/apache/tika/parser/mp3/ID3v2Frame$1;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    const-string v3, "UTF-16BE"

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;-><init>(Ljava/lang/String;ZLorg/apache/tika/parser/mp3/ID3v2Frame$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    const-string v3, "UTF-8"

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;-><init>(Ljava/lang/String;ZLorg/apache/tika/parser/mp3/ID3v2Frame$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    return-void
.end method

.method private constructor <init>(IILjava/io/InputStream;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->majorVersion:I

    iput p2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->minorVersion:I

    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->flags:I

    invoke-static {p3, v3}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->readFully(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->get7BitsInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->length:I

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p3, v3}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->readFully(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getInt([B)I

    move-result v0

    invoke-static {p3, v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->readFully(Ljava/io/InputStream;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->extendedHeader:[B

    :cond_0
    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->length:I

    invoke-static {p3, v0, v2}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tika/parser/mp3/ID3v2Frame;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B

    return-object v0
.end method

.method public static createFrameIfPresent(Ljava/io/InputStream;)Lorg/apache/tika/parser/mp3/MP3Frame;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x49

    if-ne v1, v4, :cond_2

    const/16 v4, 0x44

    if-ne v2, v4, :cond_2

    const/16 v4, 0x33

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v1, v5, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;-><init>(IILjava/io/InputStream;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/apache/tika/parser/mp3/AudioFrame;->isAudioHeader(IIII)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lorg/apache/tika/parser/mp3/AudioFrame;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/mp3/AudioFrame;-><init>(IIIILjava/io/InputStream;)V

    goto :goto_0
.end method

.method protected static get7BitsInt([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method protected static getComment([BII)Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;
    .locals 8

    const/4 v0, 0x0

    const/4 v3, -0x1

    aget-byte v1, p0, p1

    if-ltz v1, :cond_1

    sget-object v2, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    aget-object v5, v2, v1

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getString([BII)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, p1, 0x4

    move v2, v4

    :goto_0
    add-int v1, p1, p2

    if-ge v2, v1, :cond_5

    :try_start_0
    iget-boolean v1, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->doubleByte:Z

    if-eqz v1, :cond_2

    aget-byte v1, p0, v2

    if-nez v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v2, 0x2

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_0
    add-int/lit8 v1, v2, 0x2

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v4

    iget-object v7, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-direct {v0, p0, v4, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v2, v0

    :goto_1
    if-le v1, v3, :cond_4

    new-instance v0, Ljava/lang/String;

    add-int v3, p1, p2

    sub-int/2addr v3, v1

    iget-object v4, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v0

    :goto_2
    new-instance v0, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    invoke-direct {v0, v6, v2, v1}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    iget-boolean v1, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->doubleByte:Z

    if-nez v1, :cond_3

    aget-byte v1, p0, v2

    if-nez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v4

    iget-object v7, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-direct {v0, p0, v4, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p2

    sub-int/2addr v1, v4

    iget-object v3, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-direct {v0, p0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Core encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v2, v0

    move v1, v3

    goto :goto_1
.end method

.method protected static getInt([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getInt([BI)I

    move-result v0

    return v0
.end method

.method protected static getInt([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method protected static getInt2([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method protected static getInt3([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method protected static getString([BII)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Core encoding ISO-8859-1 encoding is not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getTagString([BII)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-ne p2, v5, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v1, p0, p1

    if-ltz v1, :cond_2

    sget-object v2, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    sget-object v0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->encodings:[Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;

    aget-object v0, v0, v1

    :cond_2
    :goto_1
    iget-boolean v1, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->doubleByte:Z

    if-eqz v1, :cond_3

    if-lt p2, v6, :cond_3

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    add-int/lit8 p2, p2, -0x2

    goto :goto_1

    :cond_3
    :goto_2
    iget-boolean v1, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->doubleByte:Z

    if-nez v1, :cond_4

    if-lt p2, v5, :cond_4

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_4

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    const-string v0, ""

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne p2, v6, :cond_8

    aget-byte v1, p0, p1

    if-ne v1, v4, :cond_6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    if-eq v1, v3, :cond_7

    :cond_6
    aget-byte v1, p0, p1

    if-ne v1, v3, :cond_8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_8

    :cond_7
    const-string v0, ""

    goto :goto_0

    :cond_8
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Core encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$TextEncoding;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not available"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static readFully(Ljava/io/InputStream;I)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method protected static readFully(Ljava/io/InputStream;IZ)[B
    .locals 4

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, but only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B

    return-object v0
.end method

.method public getExtendedHeader()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->extendedHeader:[B

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->flags:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->length:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame;->minorVersion:I

    return v0
.end method
