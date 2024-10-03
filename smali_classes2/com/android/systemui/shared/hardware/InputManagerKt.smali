.class public final Lcom/android/systemui/shared/hardware/InputManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final findInputDevice(Landroid/hardware/input/InputManager;Ly5/l;)Landroid/view/InputDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputManager;",
            "Ly5/l<",
            "-",
            "Landroid/view/InputDevice;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/InputDevice;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/shared/hardware/InputManagerKt;->getInputDeviceSequence(Landroid/hardware/input/InputManager;)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/InputDevice;

    invoke-interface {p1, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/InputDevice;

    return-object v0
.end method

.method public static final getInputDeviceSequence(Landroid/hardware/input/InputManager;)Lg6/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputManager;",
            ")",
            "Lg6/g<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const-string v1, "inputDeviceIds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo5/c;->i([I)Lg6/g;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;-><init>(Landroid/hardware/input/InputManager;)V

    invoke-static {v0, v1}, Lg6/j;->p(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    return-object p0
.end method

.method public static final hasAnyStylusSource(Landroid/hardware/input/InputManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasAnyStylusSource$1;->INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasAnyStylusSource$1;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Ly5/l;)Z

    move-result p0

    return p0
.end method

.method public static final hasExternalStylusSource(Landroid/hardware/input/InputManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;->INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasExternalStylusSource$1;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Ly5/l;)Z

    move-result p0

    return p0
.end method

.method public static final hasInputDevice(Landroid/hardware/input/InputManager;Ly5/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputManager;",
            "Ly5/l<",
            "-",
            "Landroid/view/InputDevice;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/shared/hardware/InputManagerKt;->getInputDeviceSequence(Landroid/hardware/input/InputManager;)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    invoke-interface {p1, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final hasInternalStylusSource(Landroid/hardware/input/InputManager;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;->INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Ly5/l;)Z

    move-result p0

    return p0
.end method
