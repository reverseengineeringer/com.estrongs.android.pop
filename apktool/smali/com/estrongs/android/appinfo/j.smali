.class Lcom/estrongs/android/appinfo/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/appinfo/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/j;->a:Lcom/estrongs/android/appinfo/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AppFolder"

    const-string v1, "request app_folder_map update info failed !"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
