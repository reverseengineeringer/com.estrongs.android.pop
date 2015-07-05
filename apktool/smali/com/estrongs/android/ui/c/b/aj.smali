.class Lcom/estrongs/android/ui/c/b/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/aj;->b:Lcom/estrongs/android/ui/c/b/u;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/aj;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/aj;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/aj;->b:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b01be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/aj;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->k()V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/aj;->b:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;)V

    goto :goto_0
.end method
