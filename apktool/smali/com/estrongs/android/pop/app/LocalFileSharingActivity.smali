.class public Lcom/estrongs/android/pop/app/LocalFileSharingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/estrongs/a/a/l;
.implements Lcom/estrongs/a/a/p;


# static fields
.field private static j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;


# instance fields
.field a:Landroid/widget/TextView;

.field private b:Landroid/app/NotificationManager;

.field private c:Z

.field private d:Landroid/widget/ListView;

.field private e:[Lcom/estrongs/android/pop/app/ef;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/BaseAdapter;

.field private h:Lcom/estrongs/fs/b/au;

.field private i:Landroid/os/Handler;

.field private k:Lcom/estrongs/android/ui/theme/al;

.field private l:Lcom/estrongs/android/ui/view/by;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Lcom/estrongs/android/ui/dialog/cg;

.field private p:Lcom/estrongs/android/ui/e/cf;

.field private q:Landroid/widget/ProgressBar;

.field private r:Landroid/widget/FrameLayout;

.field private t:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i()V

    sget-object v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i()V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "play"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "files_selected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Z)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/impl/b/c;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/b/au;->a(Landroid/content/Context;)[B

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0, v3, p2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/ArrayList;Z)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/estrongs/android/pop/app/dx;

    invoke-direct {v4, v3, v1, p0, p2}, Lcom/estrongs/android/pop/app/dx;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Z)V

    invoke-static {p0, v0, v1, v4, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_2

    :cond_3
    invoke-static {p0, v3, p2}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/ArrayList;Z)V

    goto :goto_2
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->r:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030027

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->k()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->r:Landroid/widget/FrameLayout;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/estrongs/android/ui/e/cf;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->n:Z

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/cf;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p0, p0, v0}, Lcom/estrongs/fs/b/au;->a(Landroid/app/Activity;Lcom/estrongs/a/a/p;Lcom/estrongs/a/a/l;Z)Lcom/estrongs/fs/b/au;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a019f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/estrongs/android/ui/view/by;

    invoke-direct {v1, p0, v0, v3}, Lcom/estrongs/android/ui/view/by;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l:Lcom/estrongs/android/ui/view/by;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    const/4 v1, 0x2

    const v2, 0x7f0b001d

    const v3, 0x7f0202cb

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/cf;->a(III)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l:Lcom/estrongs/android/ui/view/by;

    const-string v1, "normal_mode"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l:Lcom/estrongs/android/ui/view/by;

    const-string v1, "normal_mode"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j()V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)[Lcom/estrongs/android/pop/app/ef;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Lcom/estrongs/android/ui/e/cf;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->k:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic g()Lcom/estrongs/android/pop/app/LocalFileSharingActivity;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    return-object v0
.end method

.method private h()V
    .locals 2

    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->t:Landroid/widget/FrameLayout;

    return-void
.end method

.method private i()V
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/b/au;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ef;->a([Ljava/lang/String;)[Lcom/estrongs/android/pop/app/ef;

    move-result-object v4

    move v2, v1

    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v4, v2

    iget-object v6, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/estrongs/android/pop/app/ef;->c:Z

    iput-boolean v6, v5, Lcom/estrongs/android/pop/app/ef;->c:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 3

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/pop/app/dy;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/dy;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/dz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dz;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dw;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private l()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/ef;->c:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    const v1, 0x7f0b002c

    const v2, 0x7f0202aa

    invoke-virtual {v0, v3, v1, v2}, Lcom/estrongs/android/ui/e/cf;->a(III)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->p:Lcom/estrongs/android/ui/e/cf;

    const v1, 0x7f0b002b

    const v2, 0x7f0202a8

    invoke-virtual {v0, v3, v1, v2}, Lcom/estrongs/android/ui/e/cf;->a(III)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iput-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    :cond_2
    return-void
.end method

.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->m:Landroid/widget/TextView;

    const v2, 0x7f0b0086

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    move v0, v3

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v2, v2

    if-ge v4, v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/estrongs/android/pop/app/ef;->c:Z

    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c:Z

    if-eqz v0, :cond_3

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    const v0, 0x7f0202cb

    iput v0, v6, Landroid/app/Notification;->icon:I

    iget v0, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v6, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/estrongs/fs/b/ay;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/fs/b/ay;

    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v2, v3

    :goto_1
    if-ge v2, v9, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v9, -0x1

    if-ge v2, v0, :cond_0

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "file_name"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0b003c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v2, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->b:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ef;->b:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, v0, v2, v6}, Lcom/estrongs/fs/b/bm;->a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Z)Lcom/estrongs/fs/b/bm;

    move v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    :goto_3
    monitor-exit v5

    :goto_4
    return-void

    :cond_5
    const v0, 0x7f0b00dd

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/jw;

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/dialog/jw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p0, p0, v0}, Lcom/estrongs/fs/b/au;->a(Landroid/app/Activity;Lcom/estrongs/a/a/p;Lcom/estrongs/a/a/l;Z)Lcom/estrongs/fs/b/au;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/android/pop/app/ef;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/estrongs/android/pop/app/ef;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 5

    const v4, 0x7f0b0045

    const v3, 0x7f0b000c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->o:Lcom/estrongs/android/ui/dialog/cg;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/pop/app/ea;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ea;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b004c

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->D:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/ed;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ed;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ct;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ec;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ec;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/estrongs/android/ui/dialog/ct;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b00c1

    new-instance v3, Lcom/estrongs/android/pop/app/eb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/eb;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->o:Lcom/estrongs/android/ui/dialog/cg;

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/app/dv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dv;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ee;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ee;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->o:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->n:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h()V

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f0b02fd

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->setContentView(I)V

    const v0, 0x7f0a01a2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->r:Landroid/widget/FrameLayout;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->b:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->k:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->n:Z

    invoke-static {p0}, Lcom/estrongs/fs/b/au;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ef;->a([Ljava/lang/String;)[Lcom/estrongs/android/pop/app/ef;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "files_selected"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v4

    array-length v5, v0

    if-le v5, v6, :cond_0

    const-string v5, "displayname"

    aget-object v0, v0, v6

    invoke-interface {v4, v5, v0}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****************"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.estrongs.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v11, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v2, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    invoke-virtual {v7, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/estrongs/fs/b/au;->a(Landroid/content/Context;)[B

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c:Z

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_4
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    if-eqz v0, :cond_f

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    goto/16 :goto_2

    :cond_a
    move v7, v1

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_10

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v10

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.estrongs.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0, v11, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    if-nez v1, :cond_c

    :try_start_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_c
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f:Ljava/util/List;

    invoke-virtual {v10, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :cond_f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->finish()V

    goto/16 :goto_2

    :cond_10
    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Z)V

    sput-object p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    new-instance v0, Lcom/estrongs/android/pop/app/du;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/du;-><init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->i:Landroid/os/Handler;

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v8, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->h:Lcom/estrongs/fs/b/au;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/au;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->j:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e:[Lcom/estrongs/android/pop/app/ef;

    aget-object v2, v0, p3

    iget-boolean v0, v2, Lcom/estrongs/android/pop/app/ef;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/estrongs/android/pop/app/ef;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
