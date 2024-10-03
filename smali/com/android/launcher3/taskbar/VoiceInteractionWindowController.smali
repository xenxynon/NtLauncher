.class public final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;


# instance fields
.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final isSeparateBackgroundEnabled:Z

.field private isVoiceInteractionWindowVisible:Z

.field private final nonTouchableInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private pendingAttachedToWindowListener:Landroid/view/View$OnAttachStateChangeListener;

.field private separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private separateWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final taskbarBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->taskbarBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    sget-object p1, Lcom/android/launcher3/taskbar/p4;->g:Lcom/android/launcher3/taskbar/p4;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->nonTouchableInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->nonTouchableInsetsComputer$lambda$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static final synthetic access$getControllers$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static final synthetic access$getNonTouchableInsetsComputer$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->nonTouchableInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    return-object p0
.end method

.method public static final synthetic access$getSeparateWindowForTaskbarBackground$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method public static final synthetic access$getTaskbarBackgroundRenderer$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->taskbarBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    return-object p0
.end method

.method public static final synthetic access$setPendingAttachedToWindowListener$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->pendingAttachedToWindowListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method private final moveTaskbarBackgroundToAppropriateLayer(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isVoiceInteractionWindowVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;-><init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_1

    const-string v0, "controllers"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->setIsBackgroundDrawnElsewhere(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;-><init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz p1, :cond_3

    new-instance v1, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;-><init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Ly5/a;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->runWhenAttachedToWindow(Landroid/view/View;Ly5/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final nonTouchableInsetsComputer$lambda$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method private final runWhenAttachedToWindow(Landroid/view/View;Ly5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->pendingAttachedToWindowListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;-><init>(Ly5/a;Landroid/view/View;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->pendingAttachedToWindowListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VoiceInteractionWindowController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisSeparateBackgroundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisVoiceInteractionWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isVoiceInteractionWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tisSeparateTaskbarBackgroundAttachedToWindow="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    new-instance v1, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$init$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$init$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/16 v0, 0x7f6

    const-string v1, "VoiceInteractionTaskbarBackground"

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams(ILjava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setSystemApplicationOverlay(Z)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->setIsVoiceInteractionWindowVisible(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->pendingAttachedToWindowListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public setCornerRoundness(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->taskbarBackgroundRenderer:Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->setCornerRoundness(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->separateWindowForTaskbarBackground:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setIsVoiceInteractionWindowVisible(ZZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isVoiceInteractionWindowVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isVoiceInteractionWindowVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v1

    :cond_3
    iget-object v5, v5, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0xb4

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getAssistantBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    :cond_6
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->isSeparateBackgroundEnabled:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->moveTaskbarBackgroundToAppropriateLayer(Z)V

    :cond_7
    return-void
.end method
