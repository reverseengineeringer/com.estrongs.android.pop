.class Lcom/estrongs/android/ui/dialog/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->d(Lcom/estrongs/android/ui/dialog/fk;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fk;->d(Lcom/estrongs/android/ui/dialog/fk;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/estrongs/android/d/u;->a()V

    return-void
.end method
