.class public Lorg/apache/tika/parser/mp3/ID3v23Handler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/parser/mp3/ID3Tags;


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;",
            ">;"
        }
    .end annotation
.end field

.field private composer:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackNumber:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->comments:Ljava/util/List;

    new-instance v0, Lorg/apache/tika/parser/mp3/ID3v23Handler$RawV23TagIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler$RawV23TagIterator;-><init>(Lorg/apache/tika/parser/mp3/ID3v23Handler;Lorg/apache/tika/parser/mp3/ID3v2Frame;Lorg/apache/tika/parser/mp3/ID3v23Handler$1;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->next()Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;

    move-result-object v1

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TIT2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TPE1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TALB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->album:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TYER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->year:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TCOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->composer:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "COMM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->comments:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v3, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getComment([BII)Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TRCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->trackNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->name:Ljava/lang/String;

    const-string v3, "TCON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    iget-object v1, v1, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->data:[B

    array-length v1, v1

    invoke-direct {p0, v2, v4, v1}, Lorg/apache/tika/parser/mp3/ID3v23Handler;->getTagString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tika/parser/mp3/ID3v22Handler;->extractGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->genre:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private getComment([BII)Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;
    .locals 1

    invoke-static {p1, p2, p3}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getComment([BII)Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;

    move-result-object v0

    return-object v0
.end method

.method private getTagString([BII)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->getTagString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->composer:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsPresent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->trackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v23Handler;->year:Ljava/lang/String;

    return-object v0
.end method
