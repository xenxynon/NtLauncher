.class Lcom/android/launcher3/taskbar/TaskbarDragController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$dragSurface:Landroid/view/SurfaceControl;

.field final synthetic val$tx:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$viewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$dragSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$viewRoot:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    return-void
.end method

.method private cleanUpSurface()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$900(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/window/SurfaceSyncGroup;

    const-string v2, "TaskBarController"

    invoke-direct {v1, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$1000(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/taskbar/w1;

    invoke-direct {v3, v0}, Lcom/android/launcher3/taskbar/w1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2, v3}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$viewRoot:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$802(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->cleanUpSurface()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->cleanUpSurface()V

    return-void
.end method
