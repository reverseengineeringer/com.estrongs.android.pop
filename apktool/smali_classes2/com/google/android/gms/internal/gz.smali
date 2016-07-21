.class Lcom/google/android/gms/internal/gz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gz;->a:Lcom/google/android/gms/internal/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->a:Lcom/google/android/gms/internal/gy;

    iget-object v0, v0, Lcom/google/android/gms/internal/gy;->a:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->a()V

    return-void
.end method
