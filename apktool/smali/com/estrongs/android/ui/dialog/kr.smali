.class Lcom/estrongs/android/ui/dialog/kr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ui/dialog/kx;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/view/a;->a()I

    move-result v3

    :try_start_0
    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/kx;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;I)I

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/kx;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;I)I

    goto :goto_2

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->c(Lcom/estrongs/android/ui/dialog/kq;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kr;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->c(Lcom/estrongs/android/ui/dialog/kq;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/ui/notification/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/a;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/estrongs/android/ui/notification/a;->a(JJ)V

    goto/16 :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/a;->a()V

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/a;->b()V

    goto/16 :goto_0
.end method
