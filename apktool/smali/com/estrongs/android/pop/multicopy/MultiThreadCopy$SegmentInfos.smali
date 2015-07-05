.class public Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20df12e1f3d1784aL


# instance fields
.field public bufferSize:I

.field public destPath:Ljava/lang/String;

.field public segs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private srcLastModified:J

.field public srcLength:J

.field public srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLastModified:J

    iput-object p4, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->destPath:Ljava/lang/String;

    iput-wide p5, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLength:J

    iput p7, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->bufferSize:I

    return-void
.end method

.method static synthetic access$300(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->srcLastModified:J

    return-wide v0
.end method


# virtual methods
.method public getUnfinshedSegs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->isCopyFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCopyFinished()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->segs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfo;->isCopyFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
