.class Lcom/estrongs/android/ui/dialog/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ai;->a:Lcom/estrongs/android/ui/dialog/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/aj;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/dialog/aj;-><init>(Lcom/estrongs/android/ui/dialog/ai;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
