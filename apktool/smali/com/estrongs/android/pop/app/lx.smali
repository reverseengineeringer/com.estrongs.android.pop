.class Lcom/estrongs/android/pop/app/lx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/c;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/a/a/c;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/lx;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/estrongs/android/d/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->a(Lcom/estrongs/android/pop/app/ShowDialogActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/a/a/c;

    iput-boolean v4, v0, Lcom/estrongs/a/a/c;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lx;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/lx;->a:Lcom/estrongs/a/a/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
