.class Lcom/google/android/gms/tagmanager/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/er;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/er",
        "<",
        "Lcom/google/android/gms/internal/yj;",
        "Lcom/google/android/gms/tagmanager/bx",
        "<",
        "Lcom/google/android/gms/internal/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cx;->a:Lcom/google/android/gms/tagmanager/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/yj;Lcom/google/android/gms/tagmanager/bx;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/yj;",
            "Lcom/google/android/gms/tagmanager/bx",
            "<",
            "Lcom/google/android/gms/internal/n;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/bx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->g()I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/yj;

    check-cast p2, Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cx;->a(Lcom/google/android/gms/internal/yj;Lcom/google/android/gms/tagmanager/bx;)I

    move-result v0

    return v0
.end method
