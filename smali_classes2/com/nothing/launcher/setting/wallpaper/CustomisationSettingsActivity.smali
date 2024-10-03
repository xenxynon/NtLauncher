.class public final Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsActivity;
.super Ln4/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln4/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    const-string p2, "fragmentClassName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/nothing/launcher/setting/wallpaper/CustomisationSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public u(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
