.class Lcom/android/launcher3/taskbar/TaskbarDragLayer$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/taskbar/TaskbarDragLayer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer$1;->get(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-super {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setValue(Lcom/android/launcher3/taskbar/TaskbarDragLayer;F)V
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragLayer;)Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer$1;->setValue(Lcom/android/launcher3/taskbar/TaskbarDragLayer;F)V

    return-void
.end method
