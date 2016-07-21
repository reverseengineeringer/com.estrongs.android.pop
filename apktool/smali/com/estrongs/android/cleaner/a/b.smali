.class Lcom/estrongs/android/cleaner/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/cleaner/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/cleaner/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Memory"

    const-string v1, "Memory start scan..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;Z)Z

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v3, v0, v1, v2}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v3, v0, v1, v2}, Lcom/estrongs/android/cleaner/a/a;->b(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;)Lcom/estrongs/android/cleaner/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;)Lcom/estrongs/android/cleaner/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    invoke-static {v1}, Lcom/estrongs/android/cleaner/a/a;->b(Lcom/estrongs/android/cleaner/a/a;)Lcom/estrongs/android/cleaner/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/b;->a:Lcom/estrongs/android/cleaner/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/a/a;Z)Z

    const-string v0, "Memory"

    const-string v1, "Memory finish scan!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    return-void
.end method
