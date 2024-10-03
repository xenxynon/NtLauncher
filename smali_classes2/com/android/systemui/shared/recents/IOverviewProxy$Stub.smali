.class public abstract Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disable:I = 0x14

.field static final TRANSACTION_enterStageSplitFromRunningApp:I = 0x1a

.field static final TRANSACTION_onActiveNavBarRegionChanges:I = 0xc

.field static final TRANSACTION_onAssistantAvailable:I = 0xe

.field static final TRANSACTION_onAssistantVisibilityChanged:I = 0xf

.field static final TRANSACTION_onInitialize:I = 0xd

.field static final TRANSACTION_onNavButtonsDarkIntensityChanged:I = 0x17

.field static final TRANSACTION_onNavigationBarSurface:I = 0x1b

.field static final TRANSACTION_onOverviewHidden:I = 0x9

.field static final TRANSACTION_onOverviewShown:I = 0x8

.field static final TRANSACTION_onOverviewToggle:I = 0x7

.field static final TRANSACTION_onRotationProposal:I = 0x13

.field static final TRANSACTION_onScreenTurnedOn:I = 0x16

.field static final TRANSACTION_onScreenTurningOff:I = 0x19

.field static final TRANSACTION_onScreenTurningOn:I = 0x18

.field static final TRANSACTION_onSystemBarAttributesChanged:I = 0x15

.field static final TRANSACTION_onSystemUiStateChanged:I = 0x11

.field static final TRANSACTION_onTaskbarToggled:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onTaskbarToggled()V

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onNavigationBarSurface(Landroid/view/SurfaceControl;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    :cond_1
    invoke-interface {p0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->enterStageSplitFromRunningApp(Z)V

    goto/16 :goto_2

    :pswitch_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onScreenTurningOff()V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onScreenTurningOn()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onNavButtonsDarkIntensityChanged(F)V

    goto/16 :goto_2

    :pswitch_7
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onScreenTurnedOn()V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemBarAttributesChanged(II)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v1, v0

    :cond_2
    invoke-interface {p0, p1, p3, p4, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->disable(IIIZ)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v1, v0

    :cond_3
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onRotationProposal(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V

    goto :goto_2

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantVisibilityChanged(F)V

    goto :goto_2

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v1, v0

    :cond_5
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(ZZ)V

    goto :goto_2

    :pswitch_e
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V

    goto :goto_2

    :pswitch_f
    sget-object p1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Region;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    goto :goto_2

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    move v1, v0

    :cond_7
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V

    goto :goto_2

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v1, v0

    :cond_8
    invoke-interface {p0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V

    goto :goto_2

    :pswitch_12
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    :goto_2
    return v0

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
