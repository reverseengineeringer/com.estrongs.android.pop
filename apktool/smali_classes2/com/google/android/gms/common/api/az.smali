.class Lcom/google/android/gms/common/api/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/bg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/az;->a:Lcom/google/android/gms/common/api/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/bh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/bh",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/az;->a:Lcom/google/android/gms/common/api/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/api/ay;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
