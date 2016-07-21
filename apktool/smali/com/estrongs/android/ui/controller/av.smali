.class Lcom/estrongs/android/ui/controller/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/addressbar/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/av;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/av;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/av;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/av;->a:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()V

    goto :goto_0
.end method
