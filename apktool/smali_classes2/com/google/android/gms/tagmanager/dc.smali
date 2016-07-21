.class Lcom/google/android/gms/tagmanager/dc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bx",
            "<",
            "Lcom/google/android/gms/internal/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/bx;Lcom/google/android/gms/internal/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bx",
            "<",
            "Lcom/google/android/gms/internal/n;",
            ">;",
            "Lcom/google/android/gms/internal/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dc;->a:Lcom/google/android/gms/tagmanager/bx;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/dc;->b:Lcom/google/android/gms/internal/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/bx",
            "<",
            "Lcom/google/android/gms/internal/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dc;->a:Lcom/google/android/gms/tagmanager/bx;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dc;->b:Lcom/google/android/gms/internal/n;

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dc;->a:Lcom/google/android/gms/tagmanager/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->g()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dc;->b:Lcom/google/android/gms/internal/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dc;->b:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->g()I

    move-result v0

    goto :goto_0
.end method
