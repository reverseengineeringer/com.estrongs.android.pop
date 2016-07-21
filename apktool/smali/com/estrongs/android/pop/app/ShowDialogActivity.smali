.class public Lcom/estrongs/android/pop/app/ShowDialogActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field private a:J

.field private b:Z

.field private d:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->d:Lcom/estrongs/android/j/c;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ShowDialogActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    return-wide v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f08047d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0800b1

    new-instance v2, Lcom/estrongs/android/pop/app/lu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/lu;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/lt;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/lt;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ls;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ls;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/pop/app/mc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mc;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

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

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f08048e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ll;

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/pop/app/ll;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f08048f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ln;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/ln;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/ci;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Lcom/estrongs/android/pop/app/lo;

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/lo;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f08048f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0804c4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/lp;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/pop/app/lp;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    const v0, 0x7f08048f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
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

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

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

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/notification/f;->a(J)Lcom/estrongs/a/a;

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

    new-instance v0, Lcom/estrongs/android/ui/dialog/jh;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    new-instance v1, Lcom/estrongs/android/pop/app/lk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lk;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/estrongs/android/ui/dialog/jh;

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

    invoke-direct/range {v5 .. v12}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v13}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    new-instance v0, Lcom/estrongs/android/pop/app/lv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/lv;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/dialog/jh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/a;

    const-string v3, "needAuth"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/d/a;->dismiss()V

    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-class v0, Lcom/estrongs/a/a/c;

    invoke-virtual {v2, v0}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;

    new-instance v1, Lcom/estrongs/android/d/a;

    iget-object v3, v0, Lcom/estrongs/a/a/c;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/d/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/estrongs/android/d/a;->setCancelable(Z)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/estrongs/android/d/a;->a(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/lw;

    invoke-direct {v3, p0, v0, v2}, Lcom/estrongs/android/pop/app/lw;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/d/a;->a(Lcom/estrongs/android/d/d;)V

    const v3, 0x7f080221

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/lx;

    invoke-direct {v4, p0, v0, v2}, Lcom/estrongs/android/pop/app/lx;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/d/a;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/ly;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ly;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/d/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/d/a;->show()V

    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

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
    new-instance v0, Lcom/estrongs/android/ui/dialog/jh;

    const-string v2, "task_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v6, v7}, Lcom/estrongs/a/a;->getTask(J)Lcom/estrongs/a/a;

    move-result-object v3

    const-string v5, "creatreNotification"

    invoke-virtual {v1, v5, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Lcom/estrongs/android/pop/app/lz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lz;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

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

    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->d:Lcom/estrongs/android/j/c;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->d:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->d:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    const-string v2, "click_download_progress"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/dialog/j;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V

    new-instance v0, Lcom/estrongs/android/pop/app/ma;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ma;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

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

    new-instance v3, Lcom/estrongs/android/ui/dialog/kx;

    invoke-direct {v3}, Lcom/estrongs/android/ui/dialog/kx;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/ui/dialog/kx;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/ui/dialog/kx;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    iget-object v0, v3, Lcom/estrongs/android/ui/dialog/kx;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/kq;

    const/4 v2, 0x2

    const v5, 0x7f0804f0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/kq;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/kx;II)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kq;->a()V

    new-instance v1, Lcom/estrongs/android/pop/app/mb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mb;-><init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/kq;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kq;->b()V

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

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

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
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    return-void
.end method
