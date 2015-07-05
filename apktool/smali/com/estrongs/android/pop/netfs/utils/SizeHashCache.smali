.class public Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cacheSize:I

.field private head:I

.field private hits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TK;>;"
        }
    .end annotation
.end field

.field private rear:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->hits:Ljava/util/HashMap;

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cacheSize:I

    iput p1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cacheSize:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->hits:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cacheSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->hits:Ljava/util/HashMap;

    iget v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    iget v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cacheSize:I

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->hits:Ljava/util/HashMap;

    iget v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    iget v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    iget v1, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cacheSize:I

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->head:I

    iput v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->rear:I

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->hits:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/SizeHashCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
