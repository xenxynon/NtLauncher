.class final Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/hardware/InputManagerKt;->getInputDeviceSequence(Landroid/hardware/input/InputManager;)Lg6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Integer;",
        "Landroid/view/InputDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_getInputDeviceSequence:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;->$this_getInputDeviceSequence:Landroid/hardware/input/InputManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/view/InputDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;->$this_getInputDeviceSequence:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;->invoke(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method
