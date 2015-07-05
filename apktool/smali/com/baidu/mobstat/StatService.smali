.class public Lcom/baidu/mobstat/StatService;
.super Ljava/lang/Object;


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ad;->a()Lcom/baidu/mobstat/ad;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ad;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ag;->a(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sdkstat"

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":context=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "isCalledBy"

    aput-object v5, v3, v1

    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p0, v3, v0

    const/4 v5, 0x3

    aput-object p1, v3, v5

    invoke-static {v3}, Lcom/baidu/mobstat/util/e;->a([Ljava/lang/Object;)I

    array-length v3, v4

    if-lt v3, v0, :cond_2

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "isCalledBy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/baidu/mobstat/util/e;->a([Ljava/lang/Object;)I

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "isCalledBy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/baidu/mobstat/util/e;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    return v1
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/baidu/mobstat/af;->a()Lcom/baidu/mobstat/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/af;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/af;->a()Lcom/baidu/mobstat/af;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/af;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "webview can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v0, Lcom/baidu/mobstat/q;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/q;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static getCuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/x;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "sdkstat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onEventDuration: duration must be greater than zero"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b([Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/x;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/x;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/x;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/x;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onPageEnd :parame=null || empty"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******onPageEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mobstat/ao;->b(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onPageStart :parame=null || empty"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, "sdkstat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******onPageStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mobstat/ao;->a(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    :try_start_0
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onPause(Context context)\u4e0d\u5728Activity.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Activity.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->b(Landroid/content/Context;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onPause(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Fragment onPause(Context context)\u4e0d\u5728Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->b(Landroid/support/v4/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onPause(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "android.app.Fragment onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "android.app.Fragment onPause(Context context)\u4e0d\u5728android.app.Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in android.app.Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->b(Ljava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    :try_start_0
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->a(Landroid/content/Context;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->a(Landroid/support/v4/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sdkstat"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "onResume :parame=null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/ao;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/ao;->a(Ljava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/DataCore;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/DataCore;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/DataCore;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugOn(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mobstat/util/b;->a:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    sput v0, Lcom/baidu/mobstat/util/b;->a:I

    goto :goto_0
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/r;->a()Lcom/baidu/mobstat/r;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/r;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setLogSenderDelayed(I)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ag;->a(I)V

    return-void
.end method

.method public static setOn(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "setOn(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/StatService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/StatService;->b()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 2

    const-string v0, "setSendLogStrategy(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    goto :goto_0
.end method

.method public static setSessionTimeOut(I)V
    .locals 1

    if-gtz p0, :cond_0

    const-string v0, "SessionTimeOut is between 1 and 600. Default value[30] is used"

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x258

    if-gt p0, v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ao;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "SessionTimeOut is between 1 and 600. Value[600] is used"

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b(Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/ao;->a()Lcom/baidu/mobstat/ao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ao;->a(I)V

    goto :goto_0
.end method
