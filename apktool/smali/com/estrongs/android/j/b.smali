.class public Lcom/estrongs/android/j/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/j/b;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/dianxinos/dxservice/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/j/b;->a:Lcom/estrongs/android/j/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/j/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/j/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/j/b;->c()V

    iget-object v0, p0, Lcom/estrongs/android/j/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/core/a;->a()V

    goto :goto_0
.end method

.method public static a()Lcom/estrongs/android/j/b;
    .locals 1

    sget-object v0, Lcom/estrongs/android/j/b;->a:Lcom/estrongs/android/j/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/j/b;

    invoke-direct {v0}, Lcom/estrongs/android/j/b;-><init>()V

    sput-object v0, Lcom/estrongs/android/j/b;->a:Lcom/estrongs/android/j/b;

    :cond_0
    sget-object v0, Lcom/estrongs/android/j/b;->a:Lcom/estrongs/android/j/b;

    return-object v0
.end method

.method private c()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    const-string v1, "feedback"

    const-string v2, "http://pasta.esfile.duapps.com/feedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    const-string v1, "appInfo"

    const-string v2, "http://pasta.esfile.duapps.com/api/tokens"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    const-string v1, "data"

    const-string v2, "http://pasta.esfile.duapps.com/api/data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    const-string v1, "token"

    const-string v2, "http://pasta.esfile.duapps.com/api/tokens"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/j/b;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/e;->a(Ljava/util/Map;)V

    const-string v0, "prod"

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/core/a;->b()Z

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-class v1, Landroid/provider/Settings$System;

    :try_start_0
    const-string v2, "canWrite"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/j/b;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/j/b;->d:Lcom/dianxinos/dxservice/core/a;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/core/a;->c()Z

    :cond_0
    return-void
.end method
