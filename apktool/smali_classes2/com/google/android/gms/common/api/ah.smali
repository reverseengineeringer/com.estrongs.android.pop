.class public Lcom/google/android/gms/common/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/bi;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/ay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/bh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/h;",
            ">(",
            "Lcom/google/android/gms/common/api/bh",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/bh;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/bh;->e()Lcom/google/android/gms/common/api/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v1, v1, Lcom/google/android/gms/common/api/ay;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/bh;->e()Lcom/google/android/gms/common/api/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/bh;->d(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/bh;->b(Lcom/google/android/gms/common/api/h;)V

    goto :goto_0
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ah;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/bh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ah;->a(Lcom/google/android/gms/common/api/bh;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GoogleApiClientConnected"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->k()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/bh;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/bh;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->a:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/al;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->a:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->b()V

    :cond_2
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

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ah;->a(Lcom/google/android/gms/common/api/bh;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    new-instance v1, Lcom/google/android/gms/common/api/ai;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/ai;-><init>(Lcom/google/android/gms/common/api/ah;Lcom/google/android/gms/common/api/bi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/be;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->f()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->a:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTED"

    return-object v0
.end method
