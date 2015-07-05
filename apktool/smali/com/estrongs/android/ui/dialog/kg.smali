.class Lcom/estrongs/android/ui/dialog/kg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kf;->b(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ui/dialog/km;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/view/a;->a()I

    move-result v3

    :try_start_0
    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/km;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/kf;->b(Lcom/estrongs/android/ui/dialog/kf;I)I

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/km;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->b(Lcom/estrongs/android/ui/dialog/kf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;)V

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/dialog/kf;->b(Lcom/estrongs/android/ui/dialog/kf;I)I

    goto :goto_2

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;)Lcom/estrongs/android/util/y;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;)Lcom/estrongs/android/util/y;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/y;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->d(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->e(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->f(Lcom/estrongs/android/ui/dialog/kf;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_3

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v4}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v4}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0, v6}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kg;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->a(Lcom/estrongs/android/ui/dialog/kf;)V

    goto/16 :goto_0
.end method
