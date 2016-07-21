.class Lcom/google/android/gms/internal/lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ng;

.field final synthetic b:Lcom/google/android/gms/internal/lq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/ng;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/lq;

    iput-object p2, p0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/ng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/lq;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->a(Lcom/google/android/gms/internal/lq;)Lcom/google/android/gms/internal/ll;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/ng;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ll;->b(Lcom/google/android/gms/internal/ng;)V

    return-void
.end method
