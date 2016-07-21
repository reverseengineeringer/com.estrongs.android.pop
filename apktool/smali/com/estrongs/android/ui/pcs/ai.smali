.class Lcom/estrongs/android/ui/pcs/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ai;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ai;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->b(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/aj;-><init>(Lcom/estrongs/android/ui/pcs/ai;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
