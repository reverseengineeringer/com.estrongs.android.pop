.class Lcom/google/android/gms/internal/hm;
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
.field final synthetic a:Lcom/google/android/gms/internal/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/internal/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bh;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/internal/bh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/oe;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
