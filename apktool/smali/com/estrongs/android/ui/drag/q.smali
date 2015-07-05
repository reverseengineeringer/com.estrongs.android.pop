.class Lcom/estrongs/android/ui/drag/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/drag/DragWindowView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/DragWindowView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/q;->b:Lcom/estrongs/android/ui/drag/DragWindowView;

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/q;->b:Lcom/estrongs/android/ui/drag/DragWindowView;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a(Lcom/estrongs/android/ui/drag/DragWindowView;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/drag/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/drag/r;-><init>(Lcom/estrongs/android/ui/drag/q;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
