.class Lcom/google/android/gms/common/api/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/am;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/bb;->a:Lcom/google/android/gms/common/api/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/bb;->a:Lcom/google/android/gms/common/api/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ay;->d()Z

    move-result v0

    return v0
.end method
