.class public Lorg/simpleframework/xml/util/WeakCache;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TK;TV;>.Segment",
            "List;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/util/WeakCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;-><init>(Lorg/simpleframework/xml/util/WeakCache;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/util/WeakCache;->list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    return-void
.end method

.method private map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/WeakCache;->list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/util/WeakCache$Segment;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->take(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
