.class public final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;
.super Lo4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "BaseHomePreviewActivity"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/BaseDragLayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public q()Landroidx/fragment/app/Fragment;
    .locals 0

    new-instance p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;-><init>()V

    return-object p0
.end method
