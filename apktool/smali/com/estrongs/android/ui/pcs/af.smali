.class Lcom/estrongs/android/ui/pcs/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->b(Lcom/estrongs/android/ui/pcs/w;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ag;-><init>(Lcom/estrongs/android/ui/pcs/af;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
