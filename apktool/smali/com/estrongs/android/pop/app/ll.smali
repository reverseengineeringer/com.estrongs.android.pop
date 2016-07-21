.class Lcom/estrongs/android/pop/app/ll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic c:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ll;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ll;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ll;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ll;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ll;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->r(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ll;->b:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ll;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ll;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ll;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->t(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/lm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lm;-><init>(Lcom/estrongs/android/pop/app/ll;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ll;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ll;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ll;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
