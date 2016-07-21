.class public Lcom/estrongs/android/ui/pcs/z;
.super Lcom/estrongs/android/ui/pcs/y;


# static fields
.field private static v:J

.field private static w:J


# instance fields
.field public d:Lcom/estrongs/android/ui/pcs/f;

.field e:Lcom/estrongs/android/ui/pcs/ak;

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private o:Lcom/estrongs/android/pop/ad;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/estrongs/android/ui/pcs/z;->v:J

    sput-wide v0, Lcom/estrongs/android/ui/pcs/z;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/z;->r:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->t:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/af;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->u:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->o:Lcom/estrongs/android/pop/ad;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->q()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/Button;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/ui/pcs/q;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/ui/pcs/q;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->dismiss()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_7

    const/4 v1, -0x1

    const-string v0, "result"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-virtual {v1, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v4, 0x7f0804c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v3, 0x7f0804db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v4, 0x7f0804fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    const v1, 0x7a12a

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v3, 0x7f0804e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v4, 0x7f0804c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    const/16 v2, 0x8

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/z;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->r()V

    return-void
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aB()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->g(J)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->L(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/z;->f()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/z;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/z;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->j:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->i:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/ui/pcs/ah;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/estrongs/android/ui/pcs/ah;-><init>(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->v()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static f()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->d()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-wide v4, Lcom/estrongs/android/ui/pcs/z;->v:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    sget-wide v4, Lcom/estrongs/android/ui/pcs/z;->w:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    :cond_2
    :try_start_0
    const-string v4, "2014-06-01"

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/estrongs/android/ui/pcs/z;->v:J

    const-string v4, "2014-07-01"

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/estrongs/android/ui/pcs/z;->w:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/estrongs/android/ui/pcs/z;->v:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/estrongs/android/ui/pcs/z;->w:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->ay()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    if-le v3, v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->c(I)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v2, 0x7f0803ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v3, 0x7f0805aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->n:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/z;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/z;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->n:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->n:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->t:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e021d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0e02bc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f0e0583

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/pcs/z;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->a()V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    const v1, 0x7f0e01ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0804c4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->setTitle(I)V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    const v1, 0x7f0e0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/z;->k:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0804ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->a()V

    return-void

    :cond_0
    const v1, 0x7f0804d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x7fbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0804e8

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/pcs/ac;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/pcs/ac;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/ui/pcs/z;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->i:Landroid/widget/Button;

    const v1, 0x7f0805b2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/pcs/ad;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/ad;-><init>(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/ui/pcs/z;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->j:Landroid/widget/Button;

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->s:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e057c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v3, 0x7f0804eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0589

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    const v3, 0x7f0804e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0588

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/pcs/ae;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/pcs/ae;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->h()V

    return-void
.end method

.method static synthetic n(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->u()V

    return-void
.end method

.method private n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e0588

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e0588

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e0589

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->i:Landroid/widget/Button;

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    :cond_2
    return-void
.end method

.method static synthetic p(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e0588

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    const v1, 0x7f0e0589

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->i:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    return-void
.end method

.method private q()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/pcs/ak;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/ak;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cp;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/z;->r:Z

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->i()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->l()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->m()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_3
    return-void
.end method

.method static synthetic q(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->k()V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->o:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method private r()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/w;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->a(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/w;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->g:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/pcs/z;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/pcs/z;->k:Z

    const v0, 0x7f0804cd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/z;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->o:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->f(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->o:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aB()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->s()V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->k()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->o()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->u()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/utils/cp;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->g()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/pcs/ai;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ai;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->u()V

    goto :goto_1
.end method

.method static synthetic t(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->j()V

    return-void
.end method

.method private u()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/y;->show()V

    return-void
.end method

.method static synthetic u(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->p()V

    return-void
.end method

.method private v()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/ui/pcs/f;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/y;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->b:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/f;->a(Lcom/estrongs/android/ui/pcs/q;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->show()V

    goto :goto_0
.end method

.method static synthetic v(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->o()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    const v1, 0x7f0e021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    const v2, 0x7f0e02bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f080226

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/pcs/aa;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/ui/pcs/aa;-><init>(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/ui/pcs/z;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->g:Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/z;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ab;-><init>(Lcom/estrongs/android/ui/pcs/z;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/z;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/z;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->v()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->v()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/y;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public show()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/z;->t()V

    return-void
.end method
