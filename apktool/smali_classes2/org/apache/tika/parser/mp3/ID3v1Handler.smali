.class public Lorg/apache/tika/parser/mp3/ID3v1Handler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/parser/mp3/ID3Tags;


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private comment:Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

.field found:Z

.field private genre:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackNumber:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lorg/apache/tika/parser/mp3/LyricsHandler;->getSuffix(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/parser/mp3/ID3v1Handler;-><init>([B)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 7

    const/16 v6, 0x5d

    const/16 v5, 0x3f

    const/16 v4, 0x21

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->found:Z

    array-length v0, p1

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->found:Z

    const/4 v0, 0x3

    invoke-static {p1, v0, v4}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->title:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->artist:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->album:Ljava/lang/String;

    const/16 v0, 0x61

    invoke-static {p1, v6, v0}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->year:Ljava/lang/String;

    const/16 v0, 0x61

    const/16 v1, 0x7f

    invoke-static {p1, v0, v1}, Lorg/apache/tika/parser/mp3/ID3v1Handler;->getString([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    invoke-direct {v1, v0}, Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->comment:Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    const/16 v0, 0x7f

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/apache/tika/parser/mp3/ID3v1Handler;->GENRES:[Ljava/lang/String;

    sget-object v2, Lorg/apache/tika/parser/mp3/ID3v1Handler;->GENRES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->genre:Ljava/lang/String;

    const/16 v0, 0x7d

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x7e

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7e

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->trackNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getString([BII)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, v0, :cond_2

    aget-byte v1, p0, p1

    if-gt v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v0, p1

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/tika/exception/TikaException;

    const-string v2, "ISO-8859-1 encoding is not available"

    invoke-direct {v1, v2, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->comment:Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsPresent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->found:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->trackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v1Handler;->year:Ljava/lang/String;

    return-object v0
.end method
