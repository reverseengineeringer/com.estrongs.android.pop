.class public abstract Lcom/estrongs/android/pop/zeroconf/d;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/g;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/pop/zeroconf/d;->g:I

    iput p2, p0, Lcom/estrongs/android/pop/zeroconf/d;->f:I

    iput-boolean p3, p0, Lcom/estrongs/android/pop/zeroconf/d;->a:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->f:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/zeroconf/d;->f:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/zeroconf/d;->g:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->a:Z

    return v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/estrongs/android/pop/zeroconf/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/zeroconf/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/zeroconf/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->g:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lcom/estrongs/android/pop/zeroconf/d;->g:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->h()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->j()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/zeroconf/d;->l()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
