.class Lcom/estrongs/android/pop/app/imageviewer/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-wide v0, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slide_setting_interval"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
