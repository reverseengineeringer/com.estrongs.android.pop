.class final Lcom/google/android/gms/common/dn;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/google/android/gms/common/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/do;

    const-string v3, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0085z\u00fd\u00bb\u00e2\u0084\u00da\u00e20"

    invoke-static {v3}, Lcom/google/android/gms/common/h;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/do;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/dp;

    const-string v3, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a9\u000c`\u00f7I.\u00f0\u00eb0"

    invoke-static {v3}, Lcom/google/android/gms/common/h;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/dp;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/dn;->a:[Lcom/google/android/gms/common/h;

    return-void
.end method
