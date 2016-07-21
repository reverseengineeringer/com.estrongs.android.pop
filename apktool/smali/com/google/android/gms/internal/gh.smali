.class public Lcom/google/android/gms/internal/gh;
.super Lcom/google/android/gms/internal/np;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/qa;

.field final b:Lcom/google/android/gms/internal/gk;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/gk;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/np;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/internal/qa;

    iput-object p2, p0, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/internal/gk;

    iput-object p3, p0, Lcom/google/android/gms/internal/gh;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->r()Lcom/google/android/gms/internal/gj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/internal/gh;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/internal/gk;

    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gk;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/gi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gi;-><init>(Lcom/google/android/gms/internal/gh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/gi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/gi;-><init>(Lcom/google/android/gms/internal/gh;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->b:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gk;->a()V

    return-void
.end method
