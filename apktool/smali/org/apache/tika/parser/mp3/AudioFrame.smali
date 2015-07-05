.class public Lorg/apache/tika/parser/mp3/AudioFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/tika/parser/mp3/MP3Frame;


# instance fields
.field private channels:I

.field private sampleRate:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/io/InputStream;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    if-ne p4, v0, :cond_0

    invoke-virtual {p5}, Ljava/io/InputStream;->read()I

    move-result p1

    invoke-virtual {p5}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-virtual {p5}, Ljava/io/InputStream;->read()I

    move-result p3

    invoke-virtual {p5}, Ljava/io/InputStream;->read()I

    move-result p4

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/tika/parser/mp3/AudioFrame;->isAudioHeader(IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "MPEG 3 Layer "

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    shr-int/lit8 v0, p2, 0x1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "III"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    shr-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2.5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    :goto_1
    shr-int/lit8 v1, p3, 0x2

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x1f40

    iput v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    :goto_2
    if-ne v0, v3, :cond_8

    iget v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    :cond_1
    :goto_3
    and-int/lit16 v0, p4, 0x192

    if-ge v0, v4, :cond_9

    iput v3, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->channels:I

    :goto_4
    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "II"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(reserved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    if-ne v0, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    if-ne v0, v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(reseved)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_0
    const/16 v1, 0x2b11

    iput v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    goto/16 :goto_2

    :pswitch_1
    const/16 v1, 0x2ee0

    iput v1, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    goto/16 :goto_2

    :cond_8
    if-ne v0, v4, :cond_1

    iget v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    goto/16 :goto_3

    :cond_9
    iput v5, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->channels:I

    goto/16 :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Magic Audio Frame Header not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;)V
    .locals 6

    const/4 v1, -0x2

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/mp3/AudioFrame;-><init>(IIIILjava/io/InputStream;)V

    return-void
.end method

.method public static isAudioHeader(IIII)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xff

    if-ne p0, v1, :cond_0

    and-int/lit8 v1, p1, 0x60

    const/16 v2, 0x60

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->channels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->sampleRate:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/tika/parser/mp3/AudioFrame;->version:Ljava/lang/String;

    return-object v0
.end method
