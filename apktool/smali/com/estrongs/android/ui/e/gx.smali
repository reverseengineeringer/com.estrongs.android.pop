.class Lcom/estrongs/android/ui/e/gx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/gw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gx;->a:Lcom/estrongs/android/ui/e/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gx;->a:Lcom/estrongs/android/ui/e/gw;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gw;->a:Lcom/estrongs/android/ui/e/gv;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gv;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()V

    return-void
.end method
