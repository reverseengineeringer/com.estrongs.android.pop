.class public Lorg/apache/tika/parser/mp3/CompositeTagHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/parser/mp3/ID3Tags;


# instance fields
.field private tags:[Lorg/apache/tika/parser/mp3/ID3Tags;


# direct methods
.method public constructor <init>([Lorg/apache/tika/parser/mp3/ID3Tags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getAlbum()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getAlbum()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getArtist()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getArtist()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getArtist()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getComments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/mp3/ID3Tags$ID3Comment;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-interface {v0}, Lorg/apache/tika/parser/mp3/ID3Tags;->getComments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getComposer()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getComposer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getComposer()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getGenre()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getGenre()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTagsPresent()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v4}, Lorg/apache/tika/parser/mp3/ID3Tags;->getTagsPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getTrackNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getTrackNumber()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getYear()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/CompositeTagHandler;->tags:[Lorg/apache/tika/parser/mp3/ID3Tags;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/tika/parser/mp3/ID3Tags;->getYear()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
