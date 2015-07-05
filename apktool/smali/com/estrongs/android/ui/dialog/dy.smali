.class Lcom/estrongs/android/ui/dialog/dy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/dx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dx;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dy;->b:Lcom/estrongs/android/ui/dialog/dx;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/dy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/dz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/dz;-><init>(Lcom/estrongs/android/ui/dialog/dy;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
