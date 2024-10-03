.class Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;->access$000(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
