.class public final Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const-string v0, "The process %d does not belong to any application"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
