.class public Lcom/android/systemui/shared/recents/IOverviewProxy$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public disable(IIIZ)V
    .locals 0

    return-void
.end method

.method public enterStageSplitFromRunningApp(Z)V
    .locals 0

    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public onAssistantAvailable(ZZ)V
    .locals 0

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 0

    return-void
.end method

.method public onNavigationBarSurface(Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    return-void
.end method

.method public onOverviewToggle()V
    .locals 0

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 0

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onTaskbarToggled()V
    .locals 0

    return-void
.end method
