.class public interface abstract Lcom/android/systemui/shared/recents/ISystemUiProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;,
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;,
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.recents.ISystemUiProxy"


# virtual methods
.method public abstract expandNotificationPanel()V
.end method

.method public abstract notifyAccessibilityButtonClicked(I)V
.end method

.method public abstract notifyAccessibilityButtonLongClicked()V
.end method

.method public abstract notifyGoingToSleepByDoubleClick(II)V
.end method

.method public abstract notifyPrioritizedRotation(I)V
.end method

.method public abstract notifyTaskbarAutohideSuspend(Z)V
.end method

.method public abstract notifyTaskbarStatus(ZZ)V
.end method

.method public abstract onAssistantGestureCompletion(F)V
.end method

.method public abstract onAssistantProgress(F)V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onImeSwitcherPressed()V
.end method

.method public abstract onOverviewShown(Z)V
.end method

.method public abstract onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setHomeRotationEnabled(Z)V
.end method

.method public abstract startAssistant(Landroid/os/Bundle;)V
.end method

.method public abstract startScreenPinning(I)V
.end method

.method public abstract stopScreenPinning()V
.end method

.method public abstract takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;)V
.end method

.method public abstract toggleNotificationPanel()V
.end method
