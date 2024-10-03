.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$_Parcel;,
        Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;,
        Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController"


# virtual methods
.method public abstract onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
.end method

.method public abstract setLauncherUnlockController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V
.end method
