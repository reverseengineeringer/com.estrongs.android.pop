.class public Lcom/dianxinos/library/notify/h/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/b/b/b;

.field private static b:Lcom/dianxinos/library/b/b/a;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/b;->c:Ljava/util/Set;

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notify_items"

    invoke-static {}, Lcom/dianxinos/library/notify/data/k;->b()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dianxinos/library/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;[C)Lcom/dianxinos/library/b/b/b;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/b;->a:Lcom/dianxinos/library/b/b/b;

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->a:Lcom/dianxinos/library/b/b/b;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/b/b/b;->a(Ljava/lang/String;)Lcom/dianxinos/library/b/b/a;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)I
    .locals 3

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a()J
    .locals 4

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_show_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "android.{21c08571-4ffe-4ca8-be07-45f4070b7405}"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 4

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_show_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(J)Z
    .locals 2

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_show_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "android.{21c08571-4ffe-4ca8-be07-45f4070b7405}"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_show_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v1, v0, p1, p2}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 4

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_pull_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Z
    .locals 2

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_pull_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "key_notify_strategy"

    invoke-interface {v0, v1, p0}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static c()J
    .locals 4

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "key_last_modified_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)Z
    .locals 2

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "key_last_modified_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is dismissed,clear display flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/h/b;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d()J
    .locals 4

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_schedule_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(J)Z
    .locals 2

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "last_schedule_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotificationDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    const-string v1, "key_notify_strategy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/h/b;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0}, Lcom/dianxinos/library/b/b/a;->a()V

    return-void
.end method
