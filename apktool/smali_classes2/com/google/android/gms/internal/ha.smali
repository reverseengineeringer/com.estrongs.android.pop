.class Lcom/google/android/gms/internal/ha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hj;

.field final synthetic b:Lcom/google/android/gms/internal/gr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ha;->a:Lcom/google/android/gms/internal/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bh;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->c(Lcom/google/android/gms/internal/gr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->g(Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->a:Lcom/google/android/gms/internal/hj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v2}, Lcom/google/android/gms/internal/gr;->g(Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/hj;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->g(Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hj;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Lcom/google/android/gms/internal/gr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ha;->a:Lcom/google/android/gms/internal/hj;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/hj;)Lcom/google/android/gms/internal/hj;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ha;->a(Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
