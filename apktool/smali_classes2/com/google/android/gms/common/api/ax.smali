.class public Lcom/google/android/gms/common/api/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/bi;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/ay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/h;",
            "R::",
            "Lcom/google/android/gms/common/api/z;",
            "T:",
            "Lcom/google/android/gms/common/api/af",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->g()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/ay;->f:Ljava/util/Set;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/h;",
            "T:",
            "Lcom/google/android/gms/common/api/af",
            "<+",
            "Lcom/google/android/gms/common/api/z;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/bh;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/bh;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/ax;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->h()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method
