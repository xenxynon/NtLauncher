.class public final La3/b;
.super Lcom/android/launcher3/dragndrop/LauncherDragController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/b$a;
    }
.end annotation


# static fields
.field public static final k:La3/b$a;


# instance fields
.field private g:I

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:La3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La3/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La3/b;->k:La3/b$a;

    return-void
.end method

.method public constructor <init>(Lq2/m;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 p1, -0x1

    iput p1, p0, La3/b;->g:I

    iput p1, p0, La3/b;->h:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La3/b;->i:Ljava/util/List;

    return-void
.end method

.method private final c(La3/a;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, La3/b;->j:La3/a;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, La3/a;->onDragScrollerExit(Landroid/view/MotionEvent;)V

    :cond_0
    iget v0, p0, La3/b;->h:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1, p2, v0}, La3/a;->onDragScrollerEnter(Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-interface {p1, p2}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    iput-object p1, p0, La3/b;->j:La3/a;

    return-void
.end method

.method private final d()La3/a;
    .locals 4

    iget-object v0, p0, La3/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, La3/a;

    invoke-interface {v2}, La3/a;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, La3/a;->enableScroller()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, La3/a;

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    const-string p0, "mActivity.workspace"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method private final e(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, La3/b;->g:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, La3/b;->g:I

    invoke-virtual {p0, p1}, La3/b;->getX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, La3/b;->getY(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    goto :goto_1

    :cond_1
    iget v2, p0, La3/b;->h:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, La3/b;->h:I

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(La3/a;)V
    .locals 1

    const-string v0, "scroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La3/b;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(La3/a;)V
    .locals 1

    const-string v0, "scroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La3/b;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getX(Landroid/view/MotionEvent;)F
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, La3/b;->g:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method protected getY(Landroid/view/MotionEvent;)F
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, La3/b;->g:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, La3/b;->d()La3/a;

    move-result-object v0

    iput-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iput v2, p0, La3/b;->g:I

    iget-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, La3/b;->j:La3/a;

    goto :goto_0

    :cond_4
    iput v2, p0, La3/b;->g:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, La3/b;->g:I

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1}, La3/b;->e(Landroid/view/MotionEvent;)V

    iget-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v3, :cond_b

    iput-object v4, p0, La3/b;->j:La3/a;

    iput v2, p0, La3/b;->h:I

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, La3/b;->d()La3/a;

    move-result-object v0

    iput-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, La3/b;->h:I

    goto :goto_0

    :cond_5
    iput v2, p0, La3/b;->g:I

    iget-object v0, p0, La3/b;->j:La3/a;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, La3/a;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    iput-object v4, p0, La3/b;->j:La3/a;

    goto :goto_0

    :cond_7
    iget v0, p0, La3/b;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent -- pointerIndex = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ ev.getPointerCount() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTLauncherDragController"

    invoke-static {p1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_b

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, La3/b;->d()La3/a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, La3/b;->c(La3/a;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_9
    iput v2, p0, La3/b;->g:I

    goto :goto_0

    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, La3/b;->g:I

    :cond_b
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c
    :goto_1
    return v1
.end method
