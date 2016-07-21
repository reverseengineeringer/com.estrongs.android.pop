.class Lcom/google/android/gms/maps/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/a/af;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/google/android/gms/maps/a/y;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/y;

    iput-object v0, p0, Lcom/google/android/gms/maps/j;->b:Lcom/google/android/gms/maps/a/y;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/maps/j;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/a/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/j;->b:Lcom/google/android/gms/maps/a/y;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/maps/h;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/j;->b:Lcom/google/android/gms/maps/a/y;

    new-instance v1, Lcom/google/android/gms/maps/k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/k;-><init>(Lcom/google/android/gms/maps/j;Lcom/google/android/gms/maps/h;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/y;->a(Lcom/google/android/gms/maps/a/cp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
