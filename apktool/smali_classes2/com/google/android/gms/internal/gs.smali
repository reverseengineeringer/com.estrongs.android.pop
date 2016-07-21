.class Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hj;

.field final synthetic b:Lcom/google/android/gms/internal/gr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    iput-object p2, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->a(Lcom/google/android/gms/internal/gr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v2}, Lcom/google/android/gms/internal/gr;->b(Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/bh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->a(Lcom/google/android/gms/internal/bi;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/gw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/gw;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    new-instance v1, Lcom/google/android/gms/internal/ph;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ph;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/gx;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/gx;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/ph;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ph;->a(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->f(Lcom/google/android/gms/internal/gr;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->f(Lcom/google/android/gms/internal/gr;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/gy;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/gy;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;)V

    sget v0, Lcom/google/android/gms/internal/hc;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->f(Lcom/google/android/gms/internal/gr;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->f(Lcom/google/android/gms/internal/gr;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/gr;

    invoke-static {v1}, Lcom/google/android/gms/internal/gr;->f(Lcom/google/android/gms/internal/gr;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
