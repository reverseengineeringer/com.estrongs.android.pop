.class Lcom/estrongs/android/pop/app/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ay;->b(Landroid/content/Context;Lcom/estrongs/fs/h;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    return-void
.end method
