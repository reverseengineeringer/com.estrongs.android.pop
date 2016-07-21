.class Lcom/estrongs/android/pop/app/f/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/f/ad;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget v2, v2, Lcom/estrongs/android/pop/app/f/ad;->h:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget v1, v1, Lcom/estrongs/android/pop/app/f/ad;->h:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ak;->a:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/f/ad;->g:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/f/ad;->a(ILjava/lang/Object;)V

    return-void
.end method
