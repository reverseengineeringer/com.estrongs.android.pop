.class Lcom/estrongs/android/ui/pcs/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/ui/pcs/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/ae;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/pcs/ae;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->l(Lcom/estrongs/android/ui/pcs/w;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ae;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b04dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0506

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b04ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0239

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b04e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v5, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_6
    const v1, 0x7a12a

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0519

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v5, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0507

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ae;->d:Lcom/estrongs/android/ui/pcs/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/pcs/w;->e:Lcom/estrongs/android/ui/pcs/ah;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
