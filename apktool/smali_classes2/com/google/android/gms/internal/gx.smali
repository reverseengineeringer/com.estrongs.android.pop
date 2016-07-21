.class Lcom/google/android/gms/internal/gx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bh;

.field final synthetic b:Lcom/google/android/gms/internal/ph;

.field final synthetic c:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/ph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gx;->c:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gx;->a:Lcom/google/android/gms/internal/bh;

    iput-object p3, p0, Lcom/google/android/gms/internal/gx;->b:Lcom/google/android/gms/internal/ph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qa;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qa;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->c:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->c(Lcom/google/android/gms/internal/gr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->c:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->e(Lcom/google/android/gms/internal/gr;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->c:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->c:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->a()Lcom/google/android/gms/internal/hj;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gx;->a:Lcom/google/android/gms/internal/bh;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/gx;->b:Lcom/google/android/gms/internal/ph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ph;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fq;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/bh;->b(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
