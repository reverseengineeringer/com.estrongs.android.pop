.class Lcom/estrongs/android/pop/app/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/estrongs/android/pop/app/a/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/ac;Lcom/estrongs/android/pop/app/a/e;Landroid/widget/CheckBox;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ae;->e:Lcom/estrongs/android/pop/app/a/ac;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/a/ae;->b:Landroid/widget/CheckBox;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/app/a/ae;->c:Z

    iput-object p5, p0, Lcom/estrongs/android/pop/app/a/ae;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/a/ae;->c:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ae;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->q(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->e:Lcom/estrongs/android/pop/app/a/ac;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ac;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
