.class Lcom/google/android/gms/internal/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hf;

.field final synthetic b:Lcom/google/android/gms/internal/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hk;->b:Lcom/google/android/gms/internal/hj;

    iput-object p2, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/internal/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bh;)V
    .locals 2

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hk;->a:Lcom/google/android/gms/internal/hf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bh;->b()Lcom/google/android/gms/internal/bu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hf;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
