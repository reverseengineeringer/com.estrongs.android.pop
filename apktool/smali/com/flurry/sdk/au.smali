.class public final Lcom/flurry/sdk/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/sdk/au;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:Lcom/flurry/sdk/co;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/av;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aw;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/sdk/hb;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/co;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/au;->e:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    iput-boolean v0, p0, Lcom/flurry/sdk/au;->h:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/au;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/au;->j:Z

    sget v1, Lcom/flurry/sdk/au;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/flurry/sdk/au;->a:I

    iput v1, p0, Lcom/flurry/sdk/au;->b:I

    iput-object p1, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    new-instance v2, Lcom/flurry/sdk/av;

    invoke-direct {v2}, Lcom/flurry/sdk/av;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget-object v0, v0, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/au;->e:Ljava/util/Map;

    new-instance v3, Lcom/flurry/sdk/aw;

    invoke-direct {v3, v0}, Lcom/flurry/sdk/aw;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/flurry/sdk/hb;)Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hb;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/au;->b(I)Lcom/flurry/sdk/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->d:Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/au;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "another cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/au;->b:I

    iget v1, p1, Lcom/flurry/sdk/au;->b:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/flurry/sdk/au;->b:I

    iget v1, p1, Lcom/flurry/sdk/au;->b:I

    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ay;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aw;

    invoke-virtual {v0}, Lcom/flurry/sdk/aw;->a()Lcom/flurry/sdk/ay;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/co;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/au;->g:I

    return-void
.end method

.method public a(ILcom/flurry/sdk/fm;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/fm;)V

    goto :goto_0
.end method

.method public a(ILcom/flurry/sdk/gk;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/av;->a(Lcom/flurry/sdk/gk;)V

    goto :goto_0
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/av;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/gk;)V
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/gk;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/hb;)V
    .locals 2

    iget-object v1, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/au;->b(Lcom/flurry/sdk/hb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/au;->h:Z

    return-void
.end method

.method public b()Lcom/flurry/sdk/ay;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Lcom/flurry/sdk/ay;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/flurry/sdk/cj;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/au;->k:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/au;->i:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    return v0
.end method

.method public c(I)Lcom/flurry/sdk/bc;
    .locals 6

    invoke-static {}, Lcom/flurry/sdk/bc;->values()[Lcom/flurry/sdk/bc;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/flurry/sdk/au;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    goto :goto_1
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/au;->j:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/flurry/sdk/au;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/au;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/flurry/sdk/bc;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->c(I)Lcom/flurry/sdk/bc;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/flurry/sdk/fm;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->a()Lcom/flurry/sdk/fm;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e(I)Lcom/flurry/sdk/gk;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->b()Lcom/flurry/sdk/gk;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget-object v0, v0, Lcom/flurry/sdk/cj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/flurry/sdk/cv;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->e:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cv;

    sget-object v3, Lcom/flurry/sdk/cw;->c:Lcom/flurry/sdk/cw;

    iget-object v4, v0, Lcom/flurry/sdk/cv;->a:Lcom/flurry/sdk/cw;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/cw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public f(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()Lcom/flurry/sdk/fm;
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->d(I)Lcom/flurry/sdk/fm;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/au;->d:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/au;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->e(Ljava/lang/String;)V

    return-void
.end method

.method public g(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/au;->f(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/flurry/sdk/cz;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->w:Lcom/flurry/sdk/cz;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->w:Lcom/flurry/sdk/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->w:Lcom/flurry/sdk/cz;

    iget-object v0, v0, Lcom/flurry/sdk/cz;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Lcom/flurry/sdk/cj;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->b(I)Lcom/flurry/sdk/cj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/flurry/sdk/bc;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->c(I)Lcom/flurry/sdk/bc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->k()Lcom/flurry/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->b:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/flurry/sdk/gk;
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/au;->g:I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->e(I)Lcom/flurry/sdk/gk;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v3, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget v0, v0, Lcom/flurry/sdk/cj;->g:I

    invoke-static {v0}, Lcom/flurry/sdk/ah;->a(I)Lcom/flurry/sdk/ah;

    move-result-object v0

    sget-object v4, Lcom/flurry/sdk/ah;->b:Lcom/flurry/sdk/ah;

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/ah;

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/au;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public o()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v3, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cj;

    iget v0, v0, Lcom/flurry/sdk/cj;->g:I

    invoke-static {v0}, Lcom/flurry/sdk/ah;->a(I)Lcom/flurry/sdk/ah;

    move-result-object v0

    sget-object v4, Lcom/flurry/sdk/ah;->b:Lcom/flurry/sdk/ah;

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/au;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-object v0, v0, Lcom/flurry/sdk/co;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/au;->h:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/au;->i:Z

    return v0
.end method

.method public declared-synchronized s()Lcom/flurry/sdk/hb;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hb;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Lcom/flurry/sdk/hb;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hb;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()V
    .locals 2

    iget-object v1, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/au;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/au;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/au;->k:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-wide v0, v0, Lcom/flurry/sdk/co;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/co;

    iget-wide v2, v2, Lcom/flurry/sdk/co;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/au;->j:Z

    return v0
.end method
