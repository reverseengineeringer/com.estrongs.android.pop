.class Lcom/estrongs/android/ui/theme/r;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->d(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->e(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/dr;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->f(Lcom/estrongs/android/ui/theme/ThemeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/ThemeActivity;->setResult(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->d(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    const-class v3, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "theme_data_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    const/16 v2, 0x1024

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/theme/ThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v0, v1, p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->d(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->g(Lcom/estrongs/android/ui/theme/ThemeActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/r;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dr;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_3
        0xd -> :sswitch_2
    .end sparse-switch
.end method
