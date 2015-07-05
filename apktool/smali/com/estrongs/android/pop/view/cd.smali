.class Lcom/estrongs/android/pop/view/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/addressbar/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 3

    const v1, 0x7f0b0057

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cd;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b030f

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
