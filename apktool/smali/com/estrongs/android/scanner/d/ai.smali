.class Lcom/estrongs/android/scanner/d/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/scanner/d/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/ah;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/ai;->c:Lcom/estrongs/android/scanner/d/ah;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/ai;->a:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/scanner/d/ai;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "path"

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/ai;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "category"

    iget v1, p0, Lcom/estrongs/android/scanner/d/ai;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ai;->c:Lcom/estrongs/android/scanner/d/ah;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/ah;->a(Lcom/estrongs/android/scanner/d/ah;)Lcom/estrongs/android/scanner/d/a;

    move-result-object v0

    const-string v1, "latestOpen"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method
