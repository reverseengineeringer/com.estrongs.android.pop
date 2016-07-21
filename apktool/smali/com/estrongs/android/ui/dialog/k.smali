.class Lcom/estrongs/android/ui/dialog/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/j;->a(Lcom/estrongs/android/ui/dialog/j;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/fs/impl/b/g;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/impl/b/g;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/j;->a(Lcom/estrongs/android/ui/dialog/j;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/k;->a:Lcom/estrongs/android/ui/dialog/j;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->s(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
