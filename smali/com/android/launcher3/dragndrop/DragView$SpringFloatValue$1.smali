.class Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$200(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;->getValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$202(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)F

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$600(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;->setValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V

    return-void
.end method
