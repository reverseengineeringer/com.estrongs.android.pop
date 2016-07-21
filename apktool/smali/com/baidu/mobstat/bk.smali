.class Lcom/baidu/mobstat/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/bh;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bh;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bk;->e:Lcom/baidu/mobstat/bh;

    iput-object p2, p0, Lcom/baidu/mobstat/bk;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mobstat/bk;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/bk;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/baidu/mobstat/bp;->a()Lcom/baidu/mobstat/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bp;->c()V

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->e:Lcom/baidu/mobstat/bh;

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mobstat/bk;->e:Lcom/baidu/mobstat/bh;

    iget-object v0, v0, Lcom/baidu/mobstat/bh;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/bm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventStat: event_id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] with label["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not started or alread done."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/bk;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/mobstat/bm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/mobstat/bm;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/bk;->e:Lcom/baidu/mobstat/bh;

    iget-object v2, v2, Lcom/baidu/mobstat/bh;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/baidu/mobstat/bk;->c:J

    iget-wide v4, v0, Lcom/baidu/mobstat/bm;->c:J

    sub-long v8, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-gtz v1, :cond_3

    const-string v0, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/bk;->e:Lcom/baidu/mobstat/bh;

    iget-object v2, p0, Lcom/baidu/mobstat/bk;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/bk;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/bk;->b:Ljava/lang/String;

    const/4 v5, 0x1

    iget-wide v6, v0, Lcom/baidu/mobstat/bm;->c:J

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mobstat/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJ)V

    goto :goto_0
.end method
