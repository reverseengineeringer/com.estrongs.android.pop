.class public final Lcom/dianxinos/dxservice/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/pm/PackageManager;

.field private static c:Landroid/content/ContentResolver;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/j;
    .locals 2

    new-instance v0, Lcom/dianxinos/dxservice/stat/j;

    sget-object v1, Lcom/dianxinos/dxservice/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/dianxinos/dxservice/stat/j;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/dxservice/stat/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/dianxinos/dxservice/a/a;->b:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/dianxinos/dxservice/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/j;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/a/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/dianxinos/dxservice/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/a/a;->b:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/dianxinos/dxservice/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/a/a;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method public static a(Lcom/dianxinos/dxservice/stat/j;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/dianxinos/dxservice/a/a;->c:Landroid/content/ContentResolver;

    const-string v2, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/stat/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b(Lcom/dianxinos/dxservice/stat/j;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/stat/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/dxservice/a/a;->c:Landroid/content/ContentResolver;

    const-string v2, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dianxinos/dxservice/a/a;->c:Landroid/content/ContentResolver;

    const-string v2, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/dxservice/a/a;->c:Landroid/content/ContentResolver;

    const-string v2, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
