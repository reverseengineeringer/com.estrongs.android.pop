.class final Lcom/estrongs/android/pop/view/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->s(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method
