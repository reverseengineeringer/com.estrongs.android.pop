.class public Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;",
        ">;"
    }
.end annotation


# instance fields
.field private flagLength:I

.field private nameLength:I

.field private offset:I

.field private sizeLength:I

.field private sizeMultiplier:I

.field final synthetic this$0:Lorg/apache/tika/parser/mp3/ID3v2Frame;


# direct methods
.method protected constructor <init>(Lorg/apache/tika/parser/mp3/ID3v2Frame;IIII)V
    .locals 1

    iput-object p1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v2Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    iput p2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->nameLength:I

    iput p3, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->sizeLength:I

    iput p4, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->sizeMultiplier:I

    iput p5, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->flagLength:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v2Frame;

    # getter for: Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B
    invoke-static {v1}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->access$100(Lorg/apache/tika/parser/mp3/ID3v2Frame;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v2Frame;

    # getter for: Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B
    invoke-static {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->access$100(Lorg/apache/tika/parser/mp3/ID3v2Frame;)[B

    move-result-object v0

    iget v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->next()Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;
    .locals 8

    new-instance v0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;

    iget v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->nameLength:I

    iget v2, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->sizeLength:I

    iget v3, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->sizeMultiplier:I

    iget v4, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->flagLength:I

    iget-object v5, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->this$0:Lorg/apache/tika/parser/mp3/ID3v2Frame;

    # getter for: Lorg/apache/tika/parser/mp3/ID3v2Frame;->data:[B
    invoke-static {v5}, Lorg/apache/tika/parser/mp3/ID3v2Frame;->access$100(Lorg/apache/tika/parser/mp3/ID3v2Frame;)[B

    move-result-object v5

    iget v6, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;-><init>(IIII[BILorg/apache/tika/parser/mp3/ID3v2Frame$1;)V

    iget v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    invoke-virtual {v0}, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTag;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tika/parser/mp3/ID3v2Frame$RawTagIterator;->offset:I

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
