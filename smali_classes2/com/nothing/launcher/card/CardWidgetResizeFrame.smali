.class public final Lcom/nothing/launcher/card/CardWidgetResizeFrame;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;
    }
.end annotation


# static fields
.field public static final W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

.field private static final X:Landroid/graphics/Rect;

.field private static final Y:Landroid/graphics/Rect;


# instance fields
.field private A:Lcom/android/launcher3/CellLayout;

.field private B:Landroid/widget/ImageButton;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private final g:[Landroid/view/View;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lq2/m;

.field private final j:Lcom/android/launcher3/dragndrop/NTDragLayer;

.field private final k:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field private final l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field private final m:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final u:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final w:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final x:[I

.field private final y:[I

.field private z:Lcom/nothing/launcher/card/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->X:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->Y:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    new-array p3, p2, [Landroid/view/View;

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.nothing.launcher.NTLauncher"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lq2/m;

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-static {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object p3

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->k:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    new-instance p3, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {p3, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    new-instance p3, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {p3, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->m:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0704ca

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->n:I

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->o:I

    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->u:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    new-instance p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->w:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    const/4 p1, 0x2

    new-array p3, p1, [I

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->y:[I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->n(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    return-void
.end method

.method public static synthetic c(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->o(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    return-void
.end method

.method public static final synthetic e(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method public static final synthetic f(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->k(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static final synthetic g(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private final getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/u;->getScaleToFit()F

    move-result v1

    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->o:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->o:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->o:I

    sub-int/2addr v3, p0

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p0

    int-to-float p0, v4

    int-to-float v4, v5

    mul-float/2addr v1, v4

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method private final getSpanIncrement(F)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3f28f5c3    # 0.66f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    invoke-static {p1}, La6/a;->b(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic h(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q(Lcom/nothing/launcher/card/r;)V

    return-void
.end method

.method private final handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v0, v2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->U:I

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->V:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final hasSeenReconfigurableWidgetEducationTip()Z
    .locals 2

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.reconfigurable_widget_education_tip_seen"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static final i(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private final isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->B:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->X:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    sget-object p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->X:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private final j(Z)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {v1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-object v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    const-string v4, "cellLayout"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v5, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    iget v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->K:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->C:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-direct {v0, v5}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v9

    iget v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->J:I

    iget v5, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->L:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->D:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {v0, v2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v1

    if-nez p1, :cond_2

    if-nez v9, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    const/16 v18, 0x0

    aput v18, v2, v18

    const/16 v19, 0x1

    aput v18, v2, v19

    iget-object v5, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget v6, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v14, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-boolean v7, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    :goto_0
    iget-boolean v8, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v8

    :goto_1
    move v15, v8

    iget-object v8, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v6, v7

    invoke-virtual {v8, v7, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    iget-object v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v7, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    iget-boolean v8, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    iget v10, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->E:I

    iget v11, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->G:I

    iget-object v12, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v12, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v12, v3

    :cond_5
    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v12

    iget-object v13, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v9

    iget-object v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v8, v6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    invoke-virtual {v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v7

    const/4 v6, -0x1

    if-eqz v9, :cond_7

    iget-object v10, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    iget-boolean v11, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    if-eqz v11, :cond_6

    move v11, v6

    goto :goto_2

    :cond_6
    move/from16 v11, v19

    :goto_2
    aput v11, v10, v18

    :cond_7
    iget-object v10, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v14, v15

    invoke-virtual {v10, v15, v14}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    iget-object v10, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v11, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    iget-boolean v12, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    iget v14, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->F:I

    iget v15, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->H:I

    iget-object v13, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v13, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v13, v3

    :cond_8
    invoke-virtual {v13}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v16

    iget-object v13, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    move-object/from16 v17, v13

    move v13, v1

    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v10

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->s:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v11, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v12

    if-eqz v10, :cond_a

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    iget-boolean v13, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    if-eqz v13, :cond_9

    goto :goto_3

    :cond_9
    move/from16 v6, v19

    :goto_3
    aput v6, v1, v19

    :cond_a
    if-nez p1, :cond_b

    if-nez v10, :cond_b

    if-nez v9, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_c

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    iget-object v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->y:[I

    aget v13, v6, v18

    aput v13, v1, v18

    aget v6, v6, v19

    aput v6, v1, v19

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->y:[I

    iget-object v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    aget v13, v6, v18

    aput v13, v1, v18

    aget v6, v6, v19

    aput v6, v1, v19

    :goto_4
    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v1, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v3

    :cond_d
    iget-object v6, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    iget-object v13, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->x:[I

    move-object v14, v2

    move v2, v8

    move v3, v11

    move v4, v7

    move-object v15, v5

    move v5, v12

    move-object/from16 v16, v15

    move v15, v7

    move-object v7, v13

    move v13, v8

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->k:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_f

    iget v2, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v2, v15, :cond_e

    iget v2, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-eq v2, v12, :cond_f

    :cond_e
    iget-object v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    const v3, 0x7f12028d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v18

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {v14, v13}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual {v14, v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iput v15, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput v12, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->D:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->D:I

    iget v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->C:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->C:I

    if-nez p1, :cond_11

    invoke-direct {v0, v12}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r(I)V

    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v15, v12}, Lcom/nothing/launcher/card/a;->applyDisplaySpan(II)V

    :cond_10
    iget-object v1, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    iget-object v2, v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-static {v1, v2, v15, v12}, Lu2/b;->h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q(Lcom/nothing/launcher/card/r;)V

    goto :goto_5

    :cond_11
    move-object/from16 v1, v16

    :goto_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_12
    return-void
.end method

.method private final k(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 7

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    iput-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;

    invoke-direct {v0, p1, p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;-><init>(Landroid/view/View;Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    invoke-virtual {p1}, Lcom/nothing/launcher/card/r;->getCardWidgetInfo()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->i0()I

    move-result v2

    iput v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->E:I

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result v2

    iput v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->F:I

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->g0()I

    move-result v2

    iput v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->G:I

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->h0()I

    move-result v2

    iput v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->H:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.nothing.launcher.card.LauncherCardWidgetInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nothing/launcher/card/s;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {p0, v2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->F:I

    iget v5, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ge v3, v5, :cond_1

    iget v5, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->H:I

    if-le v5, v4, :cond_1

    if-ge v3, v5, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->R:Z

    const/16 v5, 0x8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->E:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ge v3, v2, :cond_5

    iget v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->G:I

    if-le v2, v4, :cond_5

    if-ge v3, v2, :cond_5

    move v2, v4

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->Q:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_6
    const v2, 0x7f0b0433

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->o0()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->B:Landroid/widget/ImageButton;

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/nothing/launcher/card/k;

    invoke-direct {v1, p0, p1, v0}, Lcom/nothing/launcher/card/k;-><init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iput-boolean v4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    invoke-virtual {p2, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private static final l(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/view/View;)V
    .locals 3

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$card"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$info"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p1}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/util/PendingRequestArgs;->forCardInfo(ILcom/nothing/launcher/card/CardWidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p3}, Lq2/m;->getCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p1}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result p1

    const/16 v0, 0x15

    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/nothing/launcher/card/p;->P(Lcom/android/launcher3/BaseDraggingActivity;ILcom/nothing/cardservice/CardWidgetMetaInfo;I)V

    :cond_0
    return-void
.end method

.method public static final m(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 1

    sget-object v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    invoke-virtual {v0, p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;->b(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private static final n(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Landroid/animation/ValueAnimator;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private static final o(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "launcher.reconfigurable_widget_education_tip_seen"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private final onTouchUp()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    const-string v3, "cellLayout"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v4, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->C:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->K:I

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->D:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->J:I

    new-instance v0, Lcom/nothing/launcher/card/l;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/card/l;-><init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic p(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    return-void
.end method

.method private final q(Lcom/nothing/launcher/card/r;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nothing/launcher/card/a;->hasEnforcedCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nothing/launcher/card/a;->getEnforcedCornerRadius()F

    move-result p1

    const v0, 0x7f0b0435

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private final r(I)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lj3/a;->j(Ljava/lang/Integer;Landroid/graphics/Rect;)V

    return-void
.end method

.method private final showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->B:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->i:Lq2/m;

    invoke-direct {v2, v4, v3}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12022e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->B:Landroid/widget/ImageButton;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v4, p0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method private final snapToWidget(Z)V
    .locals 16

    move-object/from16 v8, p0

    sget-object v0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->X:Landroid/graphics/Rect;

    invoke-direct {v8, v0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    if-gez v0, :cond_0

    neg-int v5, v0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iput v5, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->S:I

    add-int v5, v0, v2

    iget-object v6, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v6, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput v5, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->T:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v6, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    const-string v7, "cellLayout"

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v10, v6, Lcom/android/launcher3/Workspace;

    if-eqz v10, :cond_3

    check-cast v6, Lcom/android/launcher3/Workspace;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    iget-object v10, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v10, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4
    invoke-virtual {v6, v10}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    if-nez p1, :cond_9

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget-object v0, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    invoke-static {v0}, Lo5/c;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_8

    iget-object v0, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v2, v6

    move v6, v7

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_8

    :cond_9
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    sget-object v13, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    const/4 v14, 0x2

    new-array v15, v14, [I

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aput v9, v15, v4

    aput v1, v15, v11

    invoke-static {v13, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v12, v4

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    new-array v9, v14, [I

    iget v13, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aput v13, v9, v4

    aput v2, v9, v11

    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v12, v11

    sget-object v1, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    new-array v2, v14, [I

    iget v9, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    aput v9, v2, v4

    aput v3, v2, v11

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v12, v14

    const/4 v1, 0x3

    sget-object v2, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    new-array v3, v14, [I

    iget v9, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    aput v9, v3, v4

    aput v0, v3, v11

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v12, v1

    invoke-static {v5, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/nothing/launcher/card/j;

    invoke-direct {v2, v8}, Lcom/nothing/launcher/card/j;-><init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    invoke-static {v0}, Lo5/c;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    aput v10, v5, v4

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_6

    :cond_a
    if-eqz v6, :cond_c

    iget-object v0, v8, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_b

    invoke-static {v7}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    move-object v1, v0

    :goto_7
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v6

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    :cond_c
    const-wide/16 v0, 0x96

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    :goto_8
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method private final updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
    .locals 6

    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p5, :cond_1

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v5, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput p3, v2, v3

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    invoke-virtual {v1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_3

    move p3, v2

    goto :goto_2

    :cond_3
    move p3, v3

    :goto_2
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v1, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v4, v2, [F

    aput p4, v4, v3

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->l:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    new-array v0, v2, [F

    aput p4, v0, v3

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;

    invoke-direct {p0, p1, p3, p2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;-><init>(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V

    invoke-virtual {p5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    invoke-virtual {p2, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final beginResizeIfPointInRegion(II)Z
    .locals 6

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->Q:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->Q:Z

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    iget p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->S:I

    add-int/2addr v3, p1

    if-ge p2, v3, :cond_2

    iget-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->R:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->T:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_3

    iget-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->R:Z

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    iput-boolean p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p1, v2

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v1

    :goto_5
    const/4 v0, 0x2

    if-eqz p1, :cond_e

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    aget-object v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    if-eqz p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v5

    :goto_6
    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_7
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    aget-object p2, p2, v0

    if-nez p2, :cond_8

    goto :goto_9

    :cond_8
    iget-boolean v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_8

    :cond_9
    move v3, v5

    :goto_8
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    aget-object p2, p2, v1

    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    iget-boolean v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_a

    :cond_b
    move v1, v5

    :goto_a
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_b
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    if-nez p2, :cond_c

    goto :goto_d

    :cond_c
    iget-boolean v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    move v4, v5

    :goto_c
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_e
    :goto_d
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    mul-int/2addr v4, v0

    :goto_e
    sub-int/2addr v3, v4

    invoke-virtual {p2, v1, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_f

    :cond_f
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    goto :goto_e

    :cond_10
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p2, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    :goto_f
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->u:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_10

    :cond_11
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p:I

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_10

    :cond_12
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p2, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    :goto_10
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->w:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    return p1
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected handleClose(Z)V
    .locals 0

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->U:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->V:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->U:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->V:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->visualizeResizeForDelta(II)V

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->onTouchUp()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->V:I

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->U:I

    :goto_0
    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const v1, 0x7f0b0436

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const v1, 0x7f0b0438

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const v1, 0x7f0b0437

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    const v1, 0x7f0b0434

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->shouldConsume(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return p2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g:[Landroid/view/View;

    invoke-static {p1}, Lo5/c;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 p4, p2, 0x1

    if-gez p2, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast p3, Landroid/view/View;

    iget-object p5, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->h:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p2, p5, v0, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    move p2, p4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final tryShowReconfigurableWidgetEducationTip()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->z:Lcom/nothing/launcher/card/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/r;->getCardWidgetInfo()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->o0()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->hasSeenReconfigurableWidgetEducationTip()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nothing/launcher/card/m;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/card/m;-><init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final visualizeResizeForDelta(II)V
    .locals 11

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    iget-object v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->J:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->t:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    iget-object v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->u:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    iget-boolean v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    invoke-virtual {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->v:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->J:I

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->w:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    iget-boolean v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p2, v1, v2, p1, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->r:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget p2, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-virtual {p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->j(Z)V

    sget-object p1, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->X:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->M:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->O:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->N:Z

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    :cond_2
    iget-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->P:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :cond_3
    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x0

    const-string v1, "cellLayout"

    if-nez p2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v0

    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/Workspace;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v0

    :cond_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.Workspace<*>"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v0

    :cond_6
    invoke-virtual {p2, v2}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->m:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v0

    :cond_7
    invoke-virtual {v2, v3, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v2, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->Y:Landroid/graphics/Rect;

    const v3, 0x7f0b0435

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v4, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v0

    :cond_8
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_9

    iget v3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    if-gez v3, :cond_9

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_9

    iget p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->n:I

    int-to-float p2, p1

    int-to-float v2, v3

    add-float/2addr p2, v2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_9
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez v4, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v0

    :cond_a
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-le v3, p2, :cond_b

    iget p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->I:I

    if-lez p2, :cond_b

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_b

    iget p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->n:I

    int-to-float v2, p1

    int-to-float p2, p2

    sub-float/2addr v2, p2

    int-to-float p1, p1

    div-float p2, v2, p1

    goto :goto_0

    :cond_b
    move p2, v6

    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Le6/e;->a(FF)F

    move-result p1

    sub-float p2, v6, p2

    invoke-static {v6, p2}, Le6/e;->d(FF)F

    move-result v7

    iget-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->A:Lcom/android/launcher3/CellLayout;

    if-nez p2, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_1

    :cond_c
    move-object v4, p2

    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move v6, p1

    invoke-static/range {v3 .. v10}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->p(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;ILjava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
