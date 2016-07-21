.class Lcom/estrongs/android/appinfo/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/r;


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/appinfo/k;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/k;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, p0, Lcom/estrongs/android/appinfo/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/appinfo/k;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/p;)Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    iget v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/appinfo/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/appinfo/k;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, p0, Lcom/estrongs/android/appinfo/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
