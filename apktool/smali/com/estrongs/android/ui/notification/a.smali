.class public Lcom/estrongs/android/ui/notification/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/estrongs/android/ui/notification/a;


# instance fields
.field public a:I

.field private d:Landroid/content/Context;

.field private e:Lcom/estrongs/android/ui/notification/d;

.field private f:Landroid/widget/RemoteViews;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/notification/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/notification/a;->a:I

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    new-instance v0, Lcom/estrongs/android/ui/notification/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/a;
    .locals 2

    sget-object v0, Lcom/estrongs/android/ui/notification/a;->c:Lcom/estrongs/android/ui/notification/a;

    if-nez v0, :cond_1

    sget-object v1, Lcom/estrongs/android/ui/notification/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/notification/a;->c:Lcom/estrongs/android/ui/notification/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/notification/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/ui/notification/a;->c:Lcom/estrongs/android/ui/notification/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/notification/a;->c:Lcom/estrongs/android/ui/notification/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055a

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055b

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055d

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055e

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const v6, 0x7f0e055f

    const v5, 0x7f080706

    const v4, 0x7f080178

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/ui/notification/a;->h:Z

    iget v0, p0, Lcom/estrongs/android/ui/notification/a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/notification/a;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/notification/d;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->a()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 7

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/notification/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_5

    cmp-long v0, p1, v2

    if-lez v0, :cond_5

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    goto :goto_0

    :pswitch_1
    cmp-long v0, p1, p3

    if-nez v0, :cond_3

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    :cond_3
    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/estrongs/android/ui/notification/a;->j:I

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v2, 0x7f0e055c

    const/16 v3, 0x64

    iget v4, p0, Lcom/estrongs/android/ui/notification/a;->j:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/estrongs/android/ui/notification/a;->j:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->f:Landroid/widget/RemoteViews;

    const v1, 0x7f0e055e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    mul-long v2, p3, v4

    div-long/2addr v2, p1

    long-to-int v0, v2

    goto :goto_2

    :cond_5
    cmp-long v0, p1, v2

    if-nez v0, :cond_6

    :goto_3
    iput v1, p0, Lcom/estrongs/android/ui/notification/a;->j:I

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/android/ui/notification/a;->j:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    mul-long v0, p3, v4

    div-long/2addr v0, p1

    long-to-int v1, v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 3

    const v2, 0x7f0805f5

    iget v0, p0, Lcom/estrongs/android/ui/notification/a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/notification/a;->a(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->a()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
