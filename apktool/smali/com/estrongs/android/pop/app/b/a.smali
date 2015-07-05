.class public Lcom/estrongs/android/pop/app/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field private static h:Lcom/estrongs/android/pop/app/b/a;


# instance fields
.field private e:Z

.field private f:Lcom/estrongs/fs/b/q;

.field private g:Ljava/util/Timer;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->a:Z

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/a;->j:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/a;->k:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/a;->l:Ljava/lang/reflect/Method;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/b/a;->m:Z

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/b/a;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/b/a;->h:Lcom/estrongs/android/pop/app/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/b/a;->h:Lcom/estrongs/android/pop/app/b/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/a;->h:Lcom/estrongs/android/pop/app/b/a;

    return-object v0
.end method

.method private k()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v2, "android.bluetooth.BluetoothAdapter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefaultAdapter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b01ad

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "isEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/app/b/a;->j:Ljava/lang/reflect/Method;

    const-string v3, "disable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/app/b/a;->k:Ljava/lang/reflect/Method;

    const-string v3, "getScanMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private l()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->j:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private m()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->k:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private n()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->l:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->i:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private o()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/estrongs/android/util/bd;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->l()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b019b

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1000100a

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b0479

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b0259

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    const v5, 0x7f0b0072

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/util/bd;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->l()Z

    move-result v2

    if-nez v2, :cond_1

    sput-boolean v0, Lcom/estrongs/android/pop/app/b/a;->c:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->c()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0b0205

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/jw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/jw;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/estrongs/fs/b/q;

    invoke-direct {v2}, Lcom/estrongs/fs/b/q;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const v4, 0x7f0b019c

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/q;->setDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    new-instance v3, Lcom/estrongs/android/pop/aj;

    invoke-direct {v3}, Lcom/estrongs/android/pop/aj;-><init>()V

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/q;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/jw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/jw;->show()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/a;->f:Lcom/estrongs/fs/b/q;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/q;->execute()V

    sput-boolean v1, Lcom/estrongs/android/pop/app/b/a;->d:Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b0259

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/util/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->e()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b019b

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->e()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b0259

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/util/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->o()V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/a;->m()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b0259

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public e()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/b/a;->m:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/aw;->b(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->f()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->m:Z

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/a;->h()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/a;->e:Z

    :cond_0
    sget-boolean v0, Lcom/estrongs/android/pop/app/b/a;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/b/b;-><init>(Lcom/estrongs/android/pop/app/b/a;)V

    const-wide/32 v2, 0x49bb0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/a;->g:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
