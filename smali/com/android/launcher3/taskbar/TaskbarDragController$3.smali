.class Lcom/android/launcher3/taskbar/TaskbarDragController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$dragView:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragEnd()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$802(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
