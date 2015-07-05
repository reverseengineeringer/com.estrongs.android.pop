.class Lcom/estrongs/android/pop/view/cx;
.super Lcom/estrongs/android/ui/f/f;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p6, p0, Lcom/estrongs/android/pop/view/cx;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/ui/f/f;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M()Z

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/f/f;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cx;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
