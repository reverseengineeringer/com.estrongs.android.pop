.class public final enum Lcom/google/android/gms/internal/zzqx$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzqx$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzaUq:Lcom/google/android/gms/internal/zzqx$zza;

.field public static final enum zzaUr:Lcom/google/android/gms/internal/zzqx$zza;

.field public static final enum zzaUs:Lcom/google/android/gms/internal/zzqx$zza;

.field private static final synthetic zzaUt:[Lcom/google/android/gms/internal/zzqx$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzqx$zza;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqx$zza;->zzaUq:Lcom/google/android/gms/internal/zzqx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzqx$zza;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzqx$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqx$zza;->zzaUr:Lcom/google/android/gms/internal/zzqx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzqx$zza;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzqx$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqx$zza;->zzaUs:Lcom/google/android/gms/internal/zzqx$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/zzqx$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzqx$zza;->zzaUq:Lcom/google/android/gms/internal/zzqx$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzqx$zza;->zzaUr:Lcom/google/android/gms/internal/zzqx$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzqx$zza;->zzaUs:Lcom/google/android/gms/internal/zzqx$zza;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/zzqx$zza;->zzaUt:[Lcom/google/android/gms/internal/zzqx$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqx$zza;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzqx$zza;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqx$zza;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/zzqx$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzqx$zza;->zzaUt:[Lcom/google/android/gms/internal/zzqx$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzqx$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzqx$zza;

    return-object v0
.end method
