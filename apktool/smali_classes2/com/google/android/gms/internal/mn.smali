.class Lcom/google/android/gms/internal/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hd",
        "<",
        "Lcom/google/android/gms/internal/bh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mn;->a:Lcom/google/android/gms/internal/mg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bh;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ff;->h:Lcom/google/android/gms/internal/fq;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mn;->a(Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
