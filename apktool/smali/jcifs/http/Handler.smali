.class public Ljcifs/http/Handler;
.super Ljava/net/URLStreamHandler;


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x50

.field private static final HANDLER_PKGS_PROPERTY:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field private static final JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

.field private static final PROTOCOL_HANDLERS:Ljava/util/Map;

.field private static factory:Ljava/net/URLStreamHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sun.net.www.protocol"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private static getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 6

    const/4 v2, 0x0

    sget-object v4, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;

    if-eqz v0, :cond_0

    monitor-exit v4

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v1, :cond_9

    sget-object v0, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-interface {v0, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_8

    const-string v0, "java.protocol.handler.pkgs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "jcifs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".Handler"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-nez v0, :cond_4

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    :goto_5
    :try_start_3
    sget-object v0, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".Handler"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :goto_6
    if-nez v0, :cond_3

    :try_start_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    if-eqz v0, :cond_5

    :cond_4
    :goto_8
    if-nez v0, :cond_6

    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find default handler for protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_7

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_5

    :cond_6
    :try_start_7
    sget-object v1, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_8

    :cond_8
    move-object v0, v1

    goto :goto_4

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 3

    sget-object v1, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "URLStreamHandlerFactory already set."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Ljcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sput-object p0, Ljcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljcifs/http/Handler;->getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    new-instance v1, Ljcifs/http/NtlmHttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Ljcifs/http/NtlmHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1
.end method
