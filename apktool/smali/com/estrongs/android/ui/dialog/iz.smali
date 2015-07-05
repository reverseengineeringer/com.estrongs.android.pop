.class Lcom/estrongs/android/ui/dialog/iz;
.super Lcom/estrongs/android/ui/notification/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ix;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ix;Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/iz;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/notification/e;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/a/a;)V
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
