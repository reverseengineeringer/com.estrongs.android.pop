.class Lcom/google/android/gms/cast/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/internal/g;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/cast/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/i;Lcom/google/android/gms/cast/internal/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/j;->c:Lcom/google/android/gms/cast/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/j;->a:Lcom/google/android/gms/cast/internal/g;

    iput p3, p0, Lcom/google/android/gms/cast/internal/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/j;->a:Lcom/google/android/gms/cast/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/g;->c(Lcom/google/android/gms/cast/internal/g;)Lcom/google/android/gms/cast/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/j;->a:Lcom/google/android/gms/cast/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/g;->c(Lcom/google/android/gms/cast/internal/g;)Lcom/google/android/gms/cast/k;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/internal/j;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/k;->onApplicationDisconnected(I)V

    :cond_0
    return-void
.end method
