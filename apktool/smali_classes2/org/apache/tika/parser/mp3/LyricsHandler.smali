.class public Lorg/apache/tika/parser/mp3/LyricsHandler;
.super Ljava/lang/Object;


# instance fields
.field foundLyrics:Z

.field id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

.field lyricsText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2880

    invoke-static {p1, v0}, Lorg/apache/tika/parser/mp3/LyricsHandler;->getSuffix(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/parser/mp3/LyricsHandler;-><init>([B)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x30

    const/16 v3, 0x80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->foundLyrics:Z

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->lyricsText:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    array-length v0, p1

    if-ge v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, v3, [B

    array-length v2, p1

    add-int/lit8 v2, v2, -0x80

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lorg/apache/tika/parser/mp3/ID3v1Handler;

    invoke-direct {v2, v0}, Lorg/apache/tika/parser/mp3/ID3v1Handler;-><init>([B)V

    iput-object v2, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    array-length v0, p1

    const/16 v2, 0x89

    if-lt v0, v2, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x9

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    iget-boolean v2, v2, Lorg/apache/tika/parser/mp3/ID3v1Handler;->found:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x80

    :cond_2
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, p1, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x59

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p1, v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, p1, v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x7

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x8

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->foundLyrics:Z

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v0, -0x6

    const/4 v4, 0x6

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v2, v2, -0xb

    const-string v4, "ASCII"

    invoke-direct {v3, p1, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move v0, v1

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    const-string v2, "LYR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->lyricsText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static getSuffix(Ljava/io/InputStream;I)[B
    .locals 5

    const/4 v2, 0x0

    mul-int/lit8 v0, p1, 0x2

    new-array v3, v0, [B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v1, v0

    move v0, v2

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    add-int/2addr v0, v1

    array-length v1, v3

    if-ne v0, v1, :cond_0

    sub-int/2addr v0, p1

    invoke-static {v3, v0, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p1

    :cond_0
    array-length v1, v3

    sub-int/2addr v1, v0

    invoke-virtual {p0, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ge v0, p1, :cond_2

    move p1, v0

    :cond_2
    new-array v1, p1, [B

    sub-int/2addr v0, p1

    invoke-static {v3, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public hasID3v1()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->id3v1:Lorg/apache/tika/parser/mp3/ID3v1Handler;

    iget-boolean v0, v0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->found:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasLyrics()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->lyricsText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/LyricsHandler;->lyricsText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
