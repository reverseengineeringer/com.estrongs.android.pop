.class final Lcom/google/android/gms/common/dh;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/google/android/gms/common/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/di;

    const-string v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00b8\u00a3\r\"6\u00c8\u00a6\u00080"

    invoke-static {v3}, Lcom/google/android/gms/common/h;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/di;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/dj;

    const-string v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00b4\u00d8\u00d1=\u00fdT\u00edW0"

    invoke-static {v3}, Lcom/google/android/gms/common/h;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/dj;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/dh;->a:[Lcom/google/android/gms/common/h;

    return-void
.end method
