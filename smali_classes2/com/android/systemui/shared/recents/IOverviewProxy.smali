.class public interface abstract Lcom/android/systemui/shared/recents/IOverviewProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;,
        Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;,
        Lcom/android/systemui/shared/recents/IOverviewProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.IOverviewProxy"


# virtual methods
.method public abstract disable(IIIZ)V
.end method

.method public abstract enterStageSplitFromRunningApp(Z)V
.end method

.method public abstract onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
.end method

.method public abstract onAssistantAvailable(ZZ)V
.end method

.method public abstract onAssistantVisibilityChanged(F)V
.end method

.method public abstract onInitialize(Landroid/os/Bundle;)V
.end method

.method public abstract onNavButtonsDarkIntensityChanged(F)V
.end method

.method public abstract onNavigationBarSurface(Landroid/view/SurfaceControl;)V
.end method

.method public abstract onOverviewHidden(ZZ)V
.end method

.method public abstract onOverviewShown(Z)V
.end method

.method public abstract onOverviewToggle()V
.end method

.method public abstract onRotationProposal(IZ)V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onScreenTurningOff()V
.end method

.method public abstract onScreenTurningOn()V
.end method

.method public abstract onSystemBarAttributesChanged(II)V
.end method

.method public abstract onSystemUiStateChanged(I)V
.end method

.method public abstract onTaskbarToggled()V
.end method
