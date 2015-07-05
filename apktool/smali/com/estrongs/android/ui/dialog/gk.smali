.class public Lcom/estrongs/android/ui/dialog/gk;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/dialog/cg;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONArray;

.field private f:Landroid/os/Handler;

.field private g:Lcom/estrongs/android/ui/dialog/gr;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->f:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    iput-boolean p4, p0, Lcom/estrongs/android/ui/dialog/gk;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gr;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->g:Lcom/estrongs/android/ui/dialog/gr;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gk;->e:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/gk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/gk;->c()V

    new-instance v1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0201d6

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b04b1

    :goto_0
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->c:Lcom/estrongs/android/ui/dialog/cg;

    new-instance v0, Lcom/estrongs/android/ui/dialog/gr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/gr;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->g:Lcom/estrongs/android/ui/dialog/gr;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->g:Lcom/estrongs/android/ui/dialog/gr;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/gl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/gl;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void

    :cond_0
    const v0, 0x7f0b04b2

    goto :goto_0
.end method

.method private c()V
    .locals 10

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/gk;->i:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/ui/dialog/gm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/gm;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/a/i;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v0, v6, v2

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    const-string v9, "name"

    invoke-virtual {v0, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "disable"

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_3
    :try_start_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/gk;->e:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->f:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/go;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/go;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/gk;->c()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/gk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/gk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/gk;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->f:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/gp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/gp;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/gq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/gq;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    invoke-static {v0}, Lcom/estrongs/android/pop/a/a;->a(Lcom/estrongs/android/pop/a/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/gk;->h:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/gk;->b()V

    goto :goto_0
.end method
