.class public final Lcom/google/android/gms/internal/zzfz$zza;
.super Ljava/lang/Exception;


# instance fields
.field private final zzCI:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/zzfz$zza;->zzCI:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfz$zza;->zzCI:I

    return v0
.end method
