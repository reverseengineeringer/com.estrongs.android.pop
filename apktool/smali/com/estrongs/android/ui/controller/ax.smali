.class Lcom/estrongs/android/ui/controller/ax;
.super Lcom/estrongs/android/ui/f/l;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ax;->b:Lcom/estrongs/android/ui/controller/aj;

    iput-object p6, p0, Lcom/estrongs/android/ui/controller/ax;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/ui/f/l;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ax;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ax;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/controller/aj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Ljava/lang/String;)Z

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ax;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ax;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/f/l;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ax;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Ljava/lang/String;)V

    return-void
.end method
