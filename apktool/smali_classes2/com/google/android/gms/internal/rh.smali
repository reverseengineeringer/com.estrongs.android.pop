.class public abstract Lcom/google/android/gms/internal/rh;
.super Lcom/google/android/gms/internal/rf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/rf;"
    }
.end annotation


# instance fields
.field protected b:Lcom/google/android/gms/common/api/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ag",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ag",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/rf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rh;->b:Lcom/google/android/gms/common/api/ag;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 0

    return-void
.end method
