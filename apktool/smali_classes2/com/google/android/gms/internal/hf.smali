.class public Lcom/google/android/gms/internal/hf;
.super Lcom/google/android/gms/internal/pu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pu",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/hj;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hj;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/pu;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hf;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/hf;->e:Lcom/google/android/gms/internal/hj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hf;)Lcom/google/android/gms/internal/hj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->e:Lcom/google/android/gms/internal/hj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hf;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hf;->f:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hf;->f:Z

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hg;-><init>(Lcom/google/android/gms/internal/hf;)V

    new-instance v2, Lcom/google/android/gms/internal/ps;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ps;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/hf;->a(Lcom/google/android/gms/internal/pt;Lcom/google/android/gms/internal/pr;)V

    new-instance v0, Lcom/google/android/gms/internal/hh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hh;-><init>(Lcom/google/android/gms/internal/hf;)V

    new-instance v2, Lcom/google/android/gms/internal/hi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/hi;-><init>(Lcom/google/android/gms/internal/hf;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/hf;->a(Lcom/google/android/gms/internal/pt;Lcom/google/android/gms/internal/pr;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
