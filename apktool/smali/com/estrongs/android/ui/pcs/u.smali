.class Lcom/estrongs/android/ui/pcs/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/pcs/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/t;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/t;->b()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/u;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0508

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    monitor-exit v5

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->a(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit v5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/u;->a:Z

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_a

    const-string v0, "pcs"

    invoke-static {v4, v1, v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_12

    const-string v2, "error_msg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bduss"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e34\u65f6\u7528\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quikreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bduss"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    iput-object v2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    monitor-exit v5

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, -0x1

    const-string v1, "error_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_f

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "error_code"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    :goto_2
    const-wide/16 v2, 0x66

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x65

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x68

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    :cond_9
    :try_start_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    const-string v0, "pcs"

    invoke-static {v4, v0}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_19

    const-string v1, "force_reg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v1, "force_reg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pcs"

    invoke-static {v4, v0, v1}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_18

    const-string v0, "device_token"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v1, "error_msg"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/pcs/u;->a:Z

    if-eqz v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bduss"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e34\u65f6\u7528\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quikreg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "bduss"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iput-object v2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v6, Landroid/os/Message;->what:I

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/u;->a:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;J)V

    :cond_c
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "Direct_Register"

    const-string v2, "Direct_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    monitor-exit v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    move-wide v0, v2

    goto/16 :goto_2

    :cond_10
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    monitor-exit v5

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/t;->b(Lcom/estrongs/android/ui/pcs/t;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    monitor-exit v5

    goto/16 :goto_0

    :cond_14
    const-wide/16 v2, -0x1

    const-string v0, "error_code"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_16

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "error_code"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    :goto_5
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    :cond_15
    const/4 v0, 0x2

    :try_start_5
    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    move-wide v0, v2

    goto :goto_5

    :cond_17
    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_18
    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_19
    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/u;->b:Lcom/estrongs/android/ui/pcs/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/t;->a(Lcom/estrongs/android/ui/pcs/t;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :cond_1a
    move-object v4, v0

    goto/16 :goto_3

    :cond_1b
    move-object v1, v0

    goto/16 :goto_1
.end method
