.class public Lcom/estrongs/android/pop/app/ShowDialogActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ShowDialogActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    return-wide v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b001e

    new-instance v2, Lcom/estrongs/android/pop/app/ld;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ld;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/pop/app/lc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/lc;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/lb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lb;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ll;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ll;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "pathIsDir"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0b0322

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ku;

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/pop/app/ku;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0323

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/kw;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/kw;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/cg;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Lcom/estrongs/android/pop/app/kx;

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/kx;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b0323

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0505

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ky;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/pop/app/ky;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    const v0, 0x7f0b0323

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v13, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "task_id"

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const-string v0, "resume_task"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/notification/e;->a(J)Lcom/estrongs/a/a;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/dialog/ix;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    new-instance v1, Lcom/estrongs/android/pop/app/kt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/kt;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/estrongs/android/ui/dialog/ix;

    const-string v0, "task_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "task_source_names"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "count_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "source"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "target"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v13}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    new-instance v0, Lcom/estrongs/android/pop/app/le;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/le;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/dialog/ix;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/a;

    const-string v3, "needAuth"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->dismiss()V

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-class v0, Lcom/estrongs/a/a/c;

    invoke-virtual {v2, v0}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;

    new-instance v1, Lcom/estrongs/android/a/a;

    iget-object v3, v0, Lcom/estrongs/a/a/c;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/estrongs/android/a/a;->setCancelable(Z)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/estrongs/android/a/a;->a(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/lf;

    invoke-direct {v3, p0, v0, v2}, Lcom/estrongs/android/pop/app/lf;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/d;)V

    const v3, 0x7f0b000c

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/lg;

    invoke-direct {v4, p0, v0, v2}, Lcom/estrongs/android/pop/app/lg;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/a/a;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/lh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/lh;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/a/a;->show()V

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/estrongs/android/ui/dialog/ix;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v6, v7}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v3

    const-string v5, "creatreNotification"

    invoke-virtual {v1, v5, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    new-instance v1, Lcom/estrongs/android/pop/app/li;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/li;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "notification_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_9

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v2, "notification_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "openfileOrFolder"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "compress"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "notification_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_c

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v2, "notification_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "stop_ftp_server"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a()V

    goto/16 :goto_0

    :cond_e
    const-string v0, "openApkFile"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/j;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/dialog/j;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V

    new-instance v0, Lcom/estrongs/android/pop/app/lj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/lj;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/j;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/j;->a()V

    goto/16 :goto_0

    :cond_f
    const-string v0, "perm_update_dialog"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "version"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "market"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/estrongs/android/ui/dialog/km;

    invoke-direct {v3}, Lcom/estrongs/android/ui/dialog/km;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ui/dialog/km;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/km;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

    iget-object v0, v3, Lcom/estrongs/android/ui/dialog/km;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/kf;

    const/4 v2, 0x2

    const v5, 0x7f0b04b0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/kf;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/km;II)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kf;->a()V

    new-instance v1, Lcom/estrongs/android/pop/app/lk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lk;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/kf;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kf;->b()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v0, v1}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/estrongs/a/a/c;

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;

    iput-boolean v4, v0, Lcom/estrongs/a/a/c;->d:Z

    const/4 v2, 0x5

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
