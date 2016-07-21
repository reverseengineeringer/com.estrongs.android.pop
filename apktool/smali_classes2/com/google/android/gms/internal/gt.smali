.class Lcom/google/android/gms/internal/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bi;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bh;

.field final synthetic b:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gt;->b:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gt;->a:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/android/gms/internal/gt;)V

    sget v2, Lcom/google/android/gms/internal/hc;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
