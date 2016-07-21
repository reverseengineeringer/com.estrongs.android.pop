.class Lcom/estrongs/android/ui/e/jk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field final synthetic d:Lcom/estrongs/android/ui/e/ji;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ji;Landroid/widget/CheckBox;ZLcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jk;->d:Lcom/estrongs/android/ui/e/ji;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/jk;->a:Landroid/widget/CheckBox;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/e/jk;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/ui/e/jk;->c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/jk;->b:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->p(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
