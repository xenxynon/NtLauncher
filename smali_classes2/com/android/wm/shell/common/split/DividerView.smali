.class public Lcom/android/wm/shell/common/split/DividerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/DividerView$d;
    }
.end annotation


# static fields
.field static final t:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/wm/shell/common/split/DividerView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:I

.field private h:Landroid/view/SurfaceControlViewHost;

.field private i:Lcom/android/wm/shell/common/split/DividerHandleView;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Landroid/view/GestureDetector;

.field private m:Z

.field private n:Z

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Rect;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/animation/AnimatorListenerAdapter;

.field private final s:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$a;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->t:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerView;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->n:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->o:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->p:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$b;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$b;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->r:Landroid/animation/AnimatorListenerAdapter;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$c;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$c;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->s:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method static synthetic a(Lcom/android/wm/shell/common/split/DividerView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->q:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/android/wm/shell/common/split/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/android/wm/shell/common/split/DividerView;)Lz0/a;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method private setSlippery(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->h:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    or-int p1, v1, v2

    goto :goto_1

    :cond_3
    const p1, -0x20000001

    and-int/2addr p1, v1

    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->h:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lu0/d;->m:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->q:Landroid/widget/FrameLayout;

    sget v0, Lu0/d;->o:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerHandleView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    sget v0, Lu0/d;->n:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->j:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lu0/c;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerView;->k:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/common/split/DividerView$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/common/split/DividerView$d;-><init>(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/DividerView$a;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->l:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->m:Z

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->s:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->n:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->p:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->i:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
