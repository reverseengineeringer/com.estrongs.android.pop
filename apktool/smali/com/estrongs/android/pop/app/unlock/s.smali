.class public Lcom/estrongs/android/pop/app/unlock/s;
.super Ljava/lang/Object;


# static fields
.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/estrongs/android/pop/app/unlock/s;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/duapps/ad/f;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/unlock/y;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lock_realtimemonitor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lock_nomedia"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/app/unlock/s;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/unlock/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/estrongs/android/pop/app/unlock/s;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/unlock/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/s;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/unlock/s;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/estrongs/android/k/d;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/k/d;->b(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->b()Lcom/estrongs/android/k/f;

    move-result-object v0

    const-string v1, "show_result"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "feature"

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlocks"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    new-instance p3, Lcom/estrongs/android/pop/app/unlock/x;

    invoke-direct {p3, p0, p2, p4, p1}, Lcom/estrongs/android/pop/app/unlock/x;-><init>(Lcom/estrongs/android/pop/app/unlock/s;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "=======================init========================="

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/estrongs/android/pop/app/unlock/s;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/unlock/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/unlock/s;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/k/d;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lock_realtimemonitor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/ad;->A(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lock_nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/ad;->y(Z)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lock_realtimemonitor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->bq()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->b()Lcom/estrongs/android/k/f;

    move-result-object v3

    const-string v5, "show_result"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/ad;->A(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lock_nomedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->br()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/estrongs/android/k/d;->b()Lcom/estrongs/android/k/f;

    move-result-object v3

    const-string v5, "show_result"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/ad;->y(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "lock_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/unlock/y;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f0806f7

    const v6, 0x7f0806f6

    const v5, 0x7f0803e6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/k/d;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/unlock/y;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/unlock/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_realtimemonitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806fa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/u;-><init>(Lcom/estrongs/android/pop/app/unlock/s;)V

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/t;-><init>(Lcom/estrongs/android/pop/app/unlock/s;)V

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->c(Z)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->b(Z)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806f9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/w;-><init>(Lcom/estrongs/android/pop/app/unlock/s;)V

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/v;-><init>(Lcom/estrongs/android/pop/app/unlock/s;)V

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->c(Z)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->b(Z)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/c;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    sput-object v1, Lcom/estrongs/android/pop/app/unlock/s;->d:Lcom/estrongs/android/pop/app/unlock/s;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/unlock/s;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/unlock/y;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/duapps/ad/c;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/c;

    goto :goto_0
.end method

.method public c()Lcom/estrongs/android/k/d;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/k/h;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/k/d;

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/s;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
