.class Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->a:Lcom/google/android/gms/internal/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bt;)V
    .locals 1

    const-string v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->a:Lcom/google/android/gms/internal/hf;

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->a(Lcom/google/android/gms/internal/hf;)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hj;->b()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/bt;)V

    return-void
.end method
