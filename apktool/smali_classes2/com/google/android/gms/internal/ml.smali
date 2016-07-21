.class final Lcom/google/android/gms/internal/ml;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ml;->a:Lcom/google/android/gms/internal/mq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mq;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mq;->a()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ml;->a:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mq;->a()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hf;->a()V

    :cond_0
    return-void
.end method
