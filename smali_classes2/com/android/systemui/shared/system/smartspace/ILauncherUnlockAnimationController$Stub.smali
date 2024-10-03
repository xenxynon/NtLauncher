.class public abstract Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_dispatchSmartspaceStateToSysui:I = 0x6

.field static final TRANSACTION_playUnlockAnimation:I = 0x3

.field static final TRANSACTION_prepareForUnlock:I = 0x1

.field static final TRANSACTION_setSmartspaceSelectedPage:I = 0x4

.field static final TRANSACTION_setSmartspaceVisibility:I = 0x5

.field static final TRANSACTION_setUnlockAmount:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-interface {p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->dispatchSmartspaceStateToSysui()V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->setSmartspaceVisibility(I)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->setSmartspaceSelectedPage(I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->playUnlockAnimation(ZJJ)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v1, v0

    :cond_2
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->setUnlockAmount(FZ)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v0

    :cond_3
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, v1, p1, p2}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->prepareForUnlock(ZLandroid/graphics/Rect;I)V

    goto :goto_0

    :goto_2
    return v0

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
