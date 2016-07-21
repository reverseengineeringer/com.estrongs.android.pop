.class Lcom/google/android/gms/internal/gw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bh;

.field final synthetic b:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gw;->a:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qa;Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->c(Lcom/google/android/gms/internal/gr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hj;->f()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hj;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->d(Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->a:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/hd;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/hj;

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->a:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hj;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/gs;

    iget-object v2, v2, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/hj;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/hj;)Lcom/google/android/gms/internal/hj;

    const-string v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
