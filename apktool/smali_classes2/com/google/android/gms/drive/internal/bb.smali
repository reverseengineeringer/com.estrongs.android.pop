.class public final Lcom/google/android/gms/drive/internal/bb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/at;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/at;

    const-string v1, "GmsDrive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/at;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/internal/bb;->a:Lcom/google/android/gms/common/internal/at;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/internal/bb;->a:Lcom/google/android/gms/common/internal/at;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
