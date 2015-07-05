.class Lcom/estrongs/android/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-string v0, "com.baidu.appsearch"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    invoke-static {v0}, Lcom/estrongs/android/view/a;->a(Lcom/estrongs/android/view/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.appsearch.extinvoker.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    const-string v2, "1002320z"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "func"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "backop"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    iget-object v1, v1, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    iget-object v0, v0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->b()Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/c;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/g/h;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    iget-object v2, v2, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/g/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/g/c;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/g/h;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    const v3, 0x7f0b054a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/g/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/g/h;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    iget-object v0, v0, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->b()Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/c;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/g/h;

    iget-object v2, p0, Lcom/estrongs/android/view/b;->a:Lcom/estrongs/android/view/a;

    iget-object v2, v2, Lcom/estrongs/android/view/a;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/g/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/g/c;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/g/h;->a(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/g/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
