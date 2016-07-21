.class Lcom/estrongs/android/pop/utils/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/pop/utils/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bv;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/cc;->b:Lcom/estrongs/android/pop/utils/bv;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/cc;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
