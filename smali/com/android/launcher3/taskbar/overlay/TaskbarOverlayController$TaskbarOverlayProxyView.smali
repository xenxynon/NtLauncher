.class Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskbarOverlayProxyView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->access$200(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V

    return-void
.end method

.method public static synthetic a(ZLcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->lambda$handleClose$0(ZLcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->show()V

    return-void
.end method

.method private static synthetic lambda$handleClose$0(ZLcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    return-void
.end method

.method private show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->access$200(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->access$200(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->access$300(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/taskbar/overlay/a;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/overlay/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
