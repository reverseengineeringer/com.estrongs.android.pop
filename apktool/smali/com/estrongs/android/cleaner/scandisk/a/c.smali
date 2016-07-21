.class public Lcom/estrongs/android/cleaner/scandisk/a/c;
.super Lcom/estrongs/android/cleaner/scandisk/a/a;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0801c9

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/cleaner/scandisk/a/a;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    const-string v0, "Download"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->g:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->h:I

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->i:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v4}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v1, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    iget-object v0, p2, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/utils/w;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/c;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 2

    iget v0, p1, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Download"

    return-object v0
.end method
