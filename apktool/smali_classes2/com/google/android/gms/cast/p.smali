.class public final Lcom/google/android/gms/cast/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/cast/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/cast/u;

.field private static final c:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<",
            "Lcom/google/android/gms/internal/rt;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/internal/rt;",
            "Lcom/google/android/gms/cast/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/p;->c:Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/cast/q;

    invoke-direct {v0}, Lcom/google/android/gms/cast/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/p;->d:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "CastRemoteDisplay.API"

    sget-object v2, Lcom/google/android/gms/cast/p;->d:Lcom/google/android/gms/common/api/g;

    sget-object v3, Lcom/google/android/gms/cast/p;->c:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/cast/p;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/rm;

    sget-object v1, Lcom/google/android/gms/cast/p;->c:Lcom/google/android/gms/common/api/i;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rm;-><init>(Lcom/google/android/gms/common/api/i;)V

    sput-object v0, Lcom/google/android/gms/cast/p;->b:Lcom/google/android/gms/cast/u;

    return-void
.end method
