.class Lcom/estrongs/android/ui/dialog/ku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->h(Lcom/estrongs/android/ui/dialog/kq;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->i(Lcom/estrongs/android/ui/dialog/kq;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->i(Lcom/estrongs/android/ui/dialog/kq;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->j(Lcom/estrongs/android/ui/dialog/kq;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020315

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ku;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->j(Lcom/estrongs/android/ui/dialog/kq;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
