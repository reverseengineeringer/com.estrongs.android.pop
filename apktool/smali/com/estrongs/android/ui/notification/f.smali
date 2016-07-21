.class public Lcom/estrongs/android/ui/notification/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;
.implements Lcom/estrongs/a/a/p;


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/fs/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/BroadcastReceiver;

.field private static f:Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/notification/d;

.field private b:Landroid/app/Activity;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V
    .locals 5

    const v1, 0x7f0202b7

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/estrongs/android/ui/notification/f;->c:I

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/f;->b:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/ui/notification/d;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    instance-of v0, p3, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805b1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f08068f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    instance-of v0, p3, Lcom/estrongs/fs/b/r;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/bo;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/bc;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/ab;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/p;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/android/pop/view/utils/y;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/ag;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/y;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/estrongs/fs/b/a;

    if-eqz v0, :cond_e

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_id"

    invoke-virtual {p3}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "task_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "notification_id"

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/notification/d;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0, v4}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    :goto_1
    invoke-virtual {p3, p0}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    invoke-virtual {p3, p0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->f()I

    move-result v0

    iput v0, p3, Lcom/estrongs/a/a;->notificationId:I

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    return-void

    :cond_2
    instance-of v0, p3, Lcom/estrongs/fs/b/aq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202bf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805b8

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p3, Lcom/estrongs/fs/b/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202d1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805c8

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p3, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805ad

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p3, Lcom/estrongs/fs/b/bo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805c0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p3, Lcom/estrongs/fs/b/bc;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202c3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805bb

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p3, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0203b5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805b3

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p3, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202b5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805a5

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p3, Lcom/estrongs/fs/b/p;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805bc

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p3, Lcom/estrongs/android/pop/view/utils/y;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202cf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805c4

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p3, Lcom/estrongs/fs/b/ag;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202be

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805b4

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p3, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202d0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0805b0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p3, Lcom/estrongs/fs/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0800fe

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_1
.end method

.method static synthetic a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    sput-object p0, Lcom/estrongs/android/ui/notification/f;->e:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static a(J)Lcom/estrongs/a/a;
    .locals 2

    sget-object v0, Lcom/estrongs/android/ui/notification/f;->d:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/notification/f;)Lcom/estrongs/android/ui/notification/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/notification/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static b(J)Lcom/estrongs/a/a;
    .locals 2

    sget-object v0, Lcom/estrongs/android/ui/notification/f;->d:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private c(J)V
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/estrongs/android/ui/notification/f;->c:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/android/ui/notification/f;->c:I

    int-to-long v2, v1

    div-long v2, p1, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(I)V

    return-void
.end method

.method static synthetic d()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/notification/f;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private d(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    long-to-int v1, p1

    iget v2, p0, Lcom/estrongs/android/ui/notification/f;->c:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    return-void
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/b/r;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/estrongs/fs/b/r;->f()Lcom/estrongs/a/a/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f080694

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f080693

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/notification/g;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/notification/g;-><init>(Lcom/estrongs/android/ui/notification/f;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/notification/f;->a(Lcom/estrongs/a/a;)V

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    monitor-exit p0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->b:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/notification/h;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/notification/h;-><init>(Lcom/estrongs/android/ui/notification/f;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/notification/f;->b(Lcom/estrongs/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    if-nez v0, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p2, Lcom/estrongs/a/a/m;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/f;->b:Landroid/app/Activity;

    const v2, 0x7f08017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_3
    iget-boolean v0, p2, Lcom/estrongs/a/a/m;->l:Z

    if-eqz v0, :cond_7

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->e:J

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/notification/f;->c(J)V

    :cond_4
    iget-wide v0, p2, Lcom/estrongs/a/a/m;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->f:J

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/notification/f;->d(J)V

    :cond_5
    :goto_2
    iget-wide v0, p2, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    invoke-direct {p0}, Lcom/estrongs/android/ui/notification/f;->e()V

    :cond_6
    instance-of v0, p1, Lcom/estrongs/fs/b/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p2, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-wide v0, p2, Lcom/estrongs/a/a/m;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->c:J

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/notification/f;->c(J)V

    :cond_8
    iget-wide v0, p2, Lcom/estrongs/a/a/m;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->d:J

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/notification/f;->d(J)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/f;->a:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method
