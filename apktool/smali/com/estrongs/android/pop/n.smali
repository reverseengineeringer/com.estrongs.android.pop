.class Lcom/estrongs/android/pop/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/d;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/d;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    iput-object p2, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iput-object p3, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x5

    const/4 v3, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/h;

    iget-object v1, v0, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    if-nez v1, :cond_1

    :cond_0
    iput v3, v0, Lcom/estrongs/a/a/h;->g:I

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    iget-object v4, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v4}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b020d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    iget-object v2, v0, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/m;->a()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    iput v3, v0, Lcom/estrongs/a/a/h;->g:I

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/16 v3, 0x10

    new-instance v4, Lcom/estrongs/a/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f0b01e9

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1, v10}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a;Lcom/estrongs/a/a/h;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/a/a/h;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, v0, Lcom/estrongs/a/a/h;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b02aa

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v3}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b0049

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v3}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0236

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v3}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b01e2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iput v3, v0, Lcom/estrongs/a/a/d;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iput-boolean v9, v0, Lcom/estrongs/a/a/d;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v2, v1, v8

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/i;

    new-instance v1, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/o;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/o;-><init>(Lcom/estrongs/android/pop/n;)V

    iget-object v0, v0, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    if-ne v0, v7, :cond_7

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "needAuth"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "task_id"

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v8, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/k;

    new-instance v1, Lcom/estrongs/android/a/q;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/a/a/k;->a:Lcom/estrongs/fs/h;

    new-instance v4, Lcom/estrongs/android/pop/p;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/p;-><init>(Lcom/estrongs/android/pop/n;Lcom/estrongs/a/a/k;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/a/q;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/a/t;)V

    invoke-virtual {v1}, Lcom/estrongs/android/a/q;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/f;

    new-instance v1, Lcom/estrongs/android/pop/q;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v9, v0}, Lcom/estrongs/android/pop/q;-><init>(Lcom/estrongs/android/pop/n;Landroid/content/Context;ZLcom/estrongs/a/a/f;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/dn;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/e;

    new-instance v1, Lcom/estrongs/android/pop/r;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v8, v0}, Lcom/estrongs/android/pop/r;-><init>(Lcom/estrongs/android/pop/n;Landroid/content/Context;ZLcom/estrongs/a/a/e;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/dn;->show()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    new-instance v3, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b004c

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0a001e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b04b4

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/estrongs/a/a/j;->d:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    :goto_2
    aput-object v2, v7, v8

    iget-object v0, v0, Lcom/estrongs/a/a/j;->c:Ljava/lang/String;

    aput-object v0, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a012c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    new-instance v0, Lcom/estrongs/android/pop/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/s;-><init>(Lcom/estrongs/android/pop/n;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/u;-><init>(Lcom/estrongs/android/pop/n;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v3, v8}, Lcom/estrongs/android/ui/dialog/ct;->b(Z)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    goto/16 :goto_0

    :cond_b
    iget-object v2, v0, Lcom/estrongs/a/a/j;->d:Ljava/lang/String;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v1}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0579

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/estrongs/a/a/b;->a:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v0, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    iget v0, v0, Lcom/estrongs/a/a/b;->c:I

    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/adb/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0174

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/dialog/ct;->b(Z)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b03ac

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/v;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/v;-><init>(Lcom/estrongs/android/pop/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->c:Lcom/estrongs/android/pop/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/w;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/w;-><init>(Lcom/estrongs/android/pop/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/dialog/ct;->b(Z)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iput v3, v0, Lcom/estrongs/a/a/d;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    iput-boolean v9, v0, Lcom/estrongs/a/a/d;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v2, v1, v8

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    goto :goto_3
.end method
