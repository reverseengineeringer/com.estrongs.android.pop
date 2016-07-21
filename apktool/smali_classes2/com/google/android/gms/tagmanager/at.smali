.class Lcom/google/android/gms/tagmanager/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ar;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/tagmanager/as;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/at;->d:Lcom/google/android/gms/tagmanager/as;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/at;->a:Lcom/google/android/gms/tagmanager/ar;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/at;->b:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/at;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->d:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/au;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->c()Lcom/google/android/gms/tagmanager/di;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/at;->d:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/as;->b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/at;->a:Lcom/google/android/gms/tagmanager/ar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/di;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/at;->d:Lcom/google/android/gms/tagmanager/as;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/di;->d()Lcom/google/android/gms/tagmanager/au;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/au;)Lcom/google/android/gms/tagmanager/au;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->d:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/au;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/at;->b:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/at;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/au;->a(JLjava/lang/String;)V

    return-void
.end method
