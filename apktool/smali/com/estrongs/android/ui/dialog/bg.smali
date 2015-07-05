.class Lcom/estrongs/android/ui/dialog/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/b;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->b(I)I

    move-result v2

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pcs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bf;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/dialog/bf;->b(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "box"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "onedrive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "gdrive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "dropbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "kuaipan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "megacloud"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "kanbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vdisk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nettype"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v2, "pcs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "pcs"

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v2, "force_reg_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "force_reg_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "pcs"

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bduss"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    const-string v2, "pcs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quikreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lcom/estrongs/android/ui/dialog/fh;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/bg;->a:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/fh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/ui/dialog/fh;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fh;->a()V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_1
.end method
