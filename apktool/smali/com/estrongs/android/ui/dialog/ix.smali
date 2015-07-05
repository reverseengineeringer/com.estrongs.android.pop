.class public Lcom/estrongs/android/ui/dialog/ix;
.super Lcom/estrongs/android/ui/dialog/cg;


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
            "Lcom/estrongs/android/ui/notification/e;",
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

.field private q:Lcom/estrongs/android/view/ak;

.field private r:Lcom/estrongs/a/a;

.field private s:Landroid/os/Handler;

.field private t:Lcom/estrongs/android/ui/notification/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

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

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

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

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

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

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V
    .locals 8

    const v7, 0x7f0b0315

    const v6, 0x7f0b0045

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p6, :cond_8

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-boolean v5, p0, Lcom/estrongs/android/ui/dialog/ix;->b:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/ix;->g:J

    iput-boolean v5, p0, Lcom/estrongs/android/ui/dialog/ix;->h:Z

    iput-boolean v5, p0, Lcom/estrongs/android/ui/dialog/ix;->i:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->j:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/ja;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ja;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->l:Lcom/estrongs/a/a/p;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/dialog/ix;->i:Z

    iput-boolean p5, p0, Lcom/estrongs/android/ui/dialog/ix;->j:Z

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ix;->a:Landroid/app/Activity;

    iput-boolean v5, p0, Lcom/estrongs/android/ui/dialog/ix;->h:Z

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/dialog/ix;->setCancelable(Z)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/ix;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/m;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/iy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/iy;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->n:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/jo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jo;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/jp;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jp;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->o:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/jq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/jq;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p5, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v1, 0x7f0b030d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jr;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jt;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->l:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/utils/y;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/y;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/y;->b()Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_10

    :goto_3
    iget-object v1, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->c:Lcom/estrongs/a/a/l;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v1, v2, v0}, Lcom/estrongs/a/a/l;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V

    :cond_4
    if-eqz p5, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/k;

    if-eqz v1, :cond_b

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b053a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ju;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ju;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    if-eqz p6, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_7
    return-void

    :cond_8
    move-object v0, p1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/js;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/js;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->f()V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/ao;

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/r;

    if-eqz v1, :cond_6

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->g()V

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

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ix;->b:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/ix;->g:J

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ix;->h:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/ix;->i:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->j:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/ix;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/ja;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ja;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->l:Lcom/estrongs/a/a/p;

    iput-boolean p7, p0, Lcom/estrongs/android/ui/dialog/ix;->j:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/ix;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p5, p6}, Lcom/estrongs/android/ui/dialog/ix;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0317

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/estrongs/android/view/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/ak;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/ak;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/ak;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jv;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ix;Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/e;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ix;->t:Lcom/estrongs/android/ui/notification/e;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/ak;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/view/ak;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->aq()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ix;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ix;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ix;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ix;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/ix;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jl;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/jl;-><init>(Lcom/estrongs/android/ui/dialog/ix;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/ix;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ix;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/ix;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->f()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/view/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    return-object v0
.end method

.method private f()V
    .locals 6

    const v5, 0x7f0b02aa

    const v4, 0x7f0b0043

    const v1, 0x7f0b0027

    const/4 v3, 0x3

    const v2, 0x7f0b000c

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->i:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ab;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/bm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ag;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/a;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/iz;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/iz;-><init>(Lcom/estrongs/android/ui/dialog/ix;Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->t:Lcom/estrongs/android/ui/notification/e;

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ix;->t:Lcom/estrongs/android/ui/notification/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/notification/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->t:Lcom/estrongs/android/ui/notification/e;

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->i()V

    return-void
.end method

.method private h()V
    .locals 6

    const-wide/16 v4, 0x7d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/ix;->g:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v3, Lcom/estrongs/android/ui/dialog/jk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/jk;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sub-long v0, v4, v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ix;->h()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/ui/notification/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->t:Lcom/estrongs/android/ui/notification/e;

    return-object v0
.end method

.method private i()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

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
    new-instance v1, Lcom/estrongs/fs/o;

    invoke-direct {v1, v0, v7}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/o;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

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

.method static synthetic j(Lcom/estrongs/android/ui/dialog/ix;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/ix;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/ix;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->b:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/ix;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ui/dialog/ix;->g:J

    return-wide v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->l:Lcom/estrongs/a/a/p;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/dialog/ix;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/dialog/ix;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->j:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ix;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/dialog/ix;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ix;->h:Z

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0375

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/ix;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/a/a;->canCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->dismiss()V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->requestStop()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/ix;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/estrongs/android/ui/dialog/ix;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ak;->a(Z)V

    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0376

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/ix;->getString(I)Ljava/lang/String;

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

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

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

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/ix;->g:J

    return-void
.end method

.method public dismiss()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->q:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ix;->l:Lcom/estrongs/a/a/p;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->r:Lcom/estrongs/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    :cond_4
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ix;->d()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ix;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ix;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jm;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ix;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/jn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jn;-><init>(Lcom/estrongs/android/ui/dialog/ix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
