.class public Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final I:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/wm/shell/bubbles/BubbleExpandedView;",
            ">;"
        }
    .end annotation
.end field

.field public static final J:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/bubbles/BubbleExpandedView;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/bubbles/BubbleExpandedView;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/wm/shell/bubbles/BubbleExpandedView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private final G:Landroid/widget/FrameLayout;

.field private final H:Le1/a$a;

.field private g:Landroid/view/View;

.field private h:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

.field private j:Le1/a;

.field private k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private final u:Landroid/graphics/PointF;

.field private v:Landroid/graphics/CornerPathEffect;

.field private w:Landroid/graphics/drawable/ShapeDrawable;

.field private x:Landroid/graphics/drawable/ShapeDrawable;

.field private y:Landroid/graphics/drawable/ShapeDrawable;

.field private z:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$a;

    const-string v1, "bottomClip"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->I:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$b;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->J:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$c;

    const-string v1, "backgroundAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->K:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$d;

    const-string v1, "manageButtonAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->L:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->l:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->o:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->p:Z

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->u:Landroid/graphics/PointF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->A:F

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$e;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$e;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->H:Le1/a$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    return p0
.end method

.method static synthetic c(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/common/AlphaOptimizedButton;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    return-object p0
.end method

.method static synthetic d(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    return p0
.end method

.method static synthetic e(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)F
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->A:F

    return p0
.end method

.method private synthetic i(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private k()V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->F:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->F:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->F:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->F:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v0, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    sub-int/2addr v5, p0

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->y:Landroid/graphics/drawable/ShapeDrawable;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->z:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    :goto_1
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->B:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->B:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->v:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method f()V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->A:F

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->B:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->A:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->o()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010571
        0x11200ad
        0x11200af
    .end array-data
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->y:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleKey()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz p0, :cond_0

    const-string p0, "Overflow"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContentAlpha()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result p0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getContentBottomOnScreen()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getManageButtonMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getPointerWidth()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    return p0
.end method

.method getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->l:I

    return p0
.end method

.method getTaskView()Le1/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    return-object p0
.end method

.method getTaskViewLocationOnScreen()[I
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLocationOnScreen()[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLocationOnScreen()[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->z:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->u:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->u:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method l()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->m()V

    sget v1, Lu0/c;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    sget v1, Lu0/c;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lu0/c;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->s:F

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->s:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->v:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lu0/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->t:F

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ly0/b;->a(FFZ)Ly0/b;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->x:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    int-to-float v2, v2

    invoke-static {v1, v2, v3}, Ly0/b;->b(FFZ)Ly0/b;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->y:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ly0/b;->b(FFZ)Ly0/b;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->z:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->o()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10302e3

    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lu0/e;->b:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method m()V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->c()V

    :cond_1
    return-void
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->h:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->m:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->n:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lu0/e;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->l()V

    sget v0, Lu0/d;->C:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->x:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->w:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->f()V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/c;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/c;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->p:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->o:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k()V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentTranslationY(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->D:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->A:F

    sub-float/2addr v1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->u:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->r:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j(FF)V

    goto :goto_1

    :cond_2
    neg-float v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j(FF)V

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->q:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setContentVisibility(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->o:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->p:Z

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method setImeVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->m:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->n:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->n()V

    :cond_0
    return-void
.end method

.method public setManageButtonAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public setManageButtonTranslationY(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTranslationY(F)V

    return-void
.end method

.method setManageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->i:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSurfaceZOrderedOnTop(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->j:Le1/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->C:I

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->k()V

    return-void
.end method
