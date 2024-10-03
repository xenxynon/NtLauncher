.class final Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInternalStylusSource(Landroid/hardware/input/InputManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/view/InputDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;->INSTANCE:Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/InputDevice;)Ljava/lang/Boolean;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/shared/hardware/InputDeviceKt;->isInternalStylusSource(Landroid/view/InputDevice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/InputDevice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/hardware/InputManagerKt$hasInternalStylusSource$1;->invoke(Landroid/view/InputDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
