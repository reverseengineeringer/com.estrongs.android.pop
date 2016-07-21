.class public Lcom/estrongs/android/ui/dialog/jh;
.super Lcom/estrongs/android/ui/dialog/ci;


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/android/ui/notification/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Z

.field public f:Landroid/content/DialogInterface$OnClickListener;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/estrongs/a/a/p;

.field private m:Landroid/content/DialogInterface$OnDismissListener;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Lcom/estrongs/android/view/bo;

.field private r:Lcom/estrongs/a/a;

.field private s:Landroid/os/Handler;

.field private t:Lcom/estrongs/android/ui/notification/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/jh;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V
    .locals 7

    const v6, 0x7f080690

    const/4 v2, 0x0

    const v5, 0x7f0803eb

    const/4 v4, 0x1

    if-eqz p6, :cond_8

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/jh;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/jh;->g:J

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->h:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/jh;->j:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/jh;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/jk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jk;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->l:Lcom/estrongs/a/a/p;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/dialog/jh;->i:Z

    iput-boolean p5, p0, Lcom/estrongs/android/ui/dialog/jh;->j:Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->h:Z

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/jh;->setCancelable(Z)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/m;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ji;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ji;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->n:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/jz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jz;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->f:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ka;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ka;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->o:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/kb;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p5, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v1, 0x7f08068f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/kc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kc;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ke;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ke;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->e:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->l:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/utils/y;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->b()Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_10

    :goto_3
    iget-object v1, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->e:Lcom/estrongs/a/a/l;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v1, v2, v0}, Lcom/estrongs/a/a/l;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V

    :cond_4
    if-eqz p5, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/k;

    if-eqz v1, :cond_b

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/kf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kf;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    if-eqz p6, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_7
    return-void

    :cond_8
    move-object v0, p1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/kd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kd;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->f()V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/aq;

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/r;

    if-eqz v1, :cond_6

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->g()V

    goto/16 :goto_5

    :cond_10
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/jh;->b:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/jh;->g:J

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/jh;->h:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/jh;->i:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->j:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/jh;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/jk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jk;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->l:Lcom/estrongs/a/a/p;

    iput-boolean p7, p0, Lcom/estrongs/android/ui/dialog/jh;->j:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p5, p6}, Lcom/estrongs/android/ui/dialog/jh;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080692

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/estrongs/android/view/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/bo;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/bo;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/bo;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/kg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/kg;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/jh;Lcom/estrongs/android/ui/notification/f;)Lcom/estrongs/android/ui/notification/f;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jh;->t:Lcom/estrongs/android/ui/notification/f;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/bo;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/view/bo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/bo;->a(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bo;->aE()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/jh;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/estrongs/fs/b/ab;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "delete_clean_notification_files"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Landroid/widget/FrameLayout;

    invoke-static {v3, p1, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    if-eqz v1, :cond_0

    const v1, 0x7f080070

    new-instance v3, Lcom/estrongs/android/ui/dialog/jw;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/dialog/jw;-><init>(Lcom/estrongs/android/ui/dialog/jh;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    :cond_0
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->a()V

    return-void

    :cond_1
    iget-object v1, p2, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/jh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/jh;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/jh;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/jh;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jv;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/jv;-><init>(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/jh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/jh;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/jh;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/ab;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;Lcom/estrongs/fs/b/ab;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->f()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    return-object v0
.end method

.method private f()V
    .locals 6

    const v5, 0x7f0804a5

    const v4, 0x7f080099

    const v1, 0x7f080089

    const/4 v3, 0x3

    const v2, 0x7f080221

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->i:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ab;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/bo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/bc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ag;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/a;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/jj;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/jj;-><init>(Lcom/estrongs/android/ui/dialog/jh;Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->t:Lcom/estrongs/android/ui/notification/f;

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jh;->t:Lcom/estrongs/android/ui/notification/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/notification/f;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->t:Lcom/estrongs/android/ui/notification/f;

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->i()V

    return-void
.end method

.method private h()V
    .locals 6

    const-wide/16 v4, 0x7d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/jh;->g:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v3, Lcom/estrongs/android/ui/dialog/ju;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ju;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sub-long v0, v4, v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/jh;->h()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/ui/notification/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->t:Lcom/estrongs/android/ui/notification/f;

    return-object v0
.end method

.method private i()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/b/u;

    iget-boolean v2, v1, Lcom/estrongs/fs/b/u;->e:Z

    if-eqz v2, :cond_2

    iget-wide v2, v1, Lcom/estrongs/fs/b/u;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/estrongs/fs/z;

    invoke-direct {v1, v0, v7}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/z;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/estrongs/fs/b/ab;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ab;->execute()V

    :cond_2
    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/jh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/jh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->b:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/jh;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ui/dialog/jh;->g:J

    return-wide v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->l:Lcom/estrongs/a/a/p;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/dialog/jh;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/dialog/jh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->j:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/jh;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/bo;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/dialog/jh;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/jh;->h:Z

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805c3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/jh;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    instance-of v1, v1, Lcom/estrongs/a/q;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    :cond_0
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080465

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/a/a;->canCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->dismiss()V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->requestStop()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/jh;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/bo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/estrongs/android/ui/dialog/jh;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/bo;->a(Z)V

    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805a6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/jh;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/jh;->g:J

    return-void
.end method

.method public dismiss()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/jh;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->q:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->e:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jh;->l:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->r:Lcom/estrongs/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    :cond_4
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/jh;->d()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jh;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/jh;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jx;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jh;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jy;-><init>(Lcom/estrongs/android/ui/dialog/jh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
