.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$_Parcel;,
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;,
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"


# virtual methods
.method public abstract dispatchSmartspaceStateToSysui()V
.end method

.method public abstract playUnlockAnimation(ZJJ)V
.end method

.method public abstract prepareForUnlock(ZLandroid/graphics/Rect;I)V
.end method

.method public abstract setSmartspaceSelectedPage(I)V
.end method

.method public abstract setSmartspaceVisibility(I)V
.end method

.method public abstract setUnlockAmount(FZ)V
.end method
