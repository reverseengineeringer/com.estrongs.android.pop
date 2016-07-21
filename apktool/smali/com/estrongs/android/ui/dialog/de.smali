.class Lcom/estrongs/android/ui/dialog/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/dc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dc;Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dc;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/de;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/de;->a:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->e()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dc;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/dc;->a:Lcom/estrongs/android/ui/dialog/da;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/da;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/de;->b:Lcom/estrongs/android/ui/dialog/dc;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/dc;->a:Lcom/estrongs/android/ui/dialog/da;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/da;->b()V

    :cond_0
    return-void
.end method
