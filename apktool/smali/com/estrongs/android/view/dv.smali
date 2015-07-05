.class Lcom/estrongs/android/view/dv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dv;->a:Lcom/estrongs/android/view/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    :cond_0
    return-void
.end method
