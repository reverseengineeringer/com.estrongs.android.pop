.class Lcom/estrongs/android/ui/navigation/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/h;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0806c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/gd;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/gd;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/navigation/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/j;-><init>(Lcom/estrongs/android/ui/navigation/i;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gj;)Lcom/estrongs/android/ui/dialog/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gd;->a()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080610

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/ui/navigation/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/navigation/k;-><init>(Lcom/estrongs/android/ui/navigation/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e05b4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
