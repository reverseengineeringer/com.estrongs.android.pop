.class Lcom/estrongs/android/pop/app/ik;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)I

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ik;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)I

    goto :goto_1
.end method
