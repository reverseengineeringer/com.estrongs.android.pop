.class Lcom/estrongs/android/ui/dialog/kj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->k(Lcom/estrongs/android/ui/dialog/kf;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->l(Lcom/estrongs/android/ui/dialog/kf;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->l(Lcom/estrongs/android/ui/dialog/kf;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->m(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->m(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
