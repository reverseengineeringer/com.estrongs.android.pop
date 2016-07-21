.class public Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/nearby/bootstrap/request/c;


# instance fields
.field final b:I

.field private final c:Lcom/google/android/gms/internal/xi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/c;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->a:Lcom/google/android/gms/nearby/bootstrap/request/c;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->b:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/internal/xj;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/xi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->c:Lcom/google/android/gms/internal/xi;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->c:Lcom/google/android/gms/internal/xi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->c:Lcom/google/android/gms/internal/xi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->a:Lcom/google/android/gms/nearby/bootstrap/request/c;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->a:Lcom/google/android/gms/nearby/bootstrap/request/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/c;->a(Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;Landroid/os/Parcel;I)V

    return-void
.end method
