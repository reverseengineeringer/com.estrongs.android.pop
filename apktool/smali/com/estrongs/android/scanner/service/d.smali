.class Lcom/estrongs/android/scanner/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/scanner/service/FileMonitorService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileMonitorService;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/d;->b:Lcom/estrongs/android/scanner/service/FileMonitorService;

    iput-object p2, p0, Lcom/estrongs/android/scanner/service/d;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/d;->b:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;)Lcom/estrongs/android/scanner/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/service/a;->a()V

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/d;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/estrongs/android/scanner/service/d;->b:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v4}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;)Lcom/estrongs/android/scanner/service/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/estrongs/android/scanner/service/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
