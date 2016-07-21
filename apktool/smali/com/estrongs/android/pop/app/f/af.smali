.class Lcom/estrongs/android/pop/app/f/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/af;->a:Lcom/estrongs/android/pop/app/f/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/af;->a:Lcom/estrongs/android/pop/app/f/ae;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/f/ae;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/af;->a:Lcom/estrongs/android/pop/app/f/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/af;->a:Lcom/estrongs/android/pop/app/f/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/af;->a:Lcom/estrongs/android/pop/app/f/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/estrongs/android/pop/app/f/ad;->a(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
