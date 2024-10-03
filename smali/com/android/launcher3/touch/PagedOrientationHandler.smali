.class public interface abstract Lcom/android/launcher3/touch/PagedOrientationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;,
        Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;,
        Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    }
.end annotation


# static fields
.field public static final CANVAS_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public static final MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public static final SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public static final VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/PortraitPagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    new-instance v0, Lcom/android/launcher3/touch/LandscapePagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    new-instance v0, Lcom/android/launcher3/touch/SeascapePagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SeascapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v0, Lcom/android/launcher3/touch/r;->a:Lcom/android/launcher3/touch/r;

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    sget-object v0, Lcom/android/launcher3/touch/s;->a:Lcom/android/launcher3/touch/s;

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    sget-object v0, Lcom/android/launcher3/touch/p;->a:Lcom/android/launcher3/touch/p;

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    sget-object v0, Lcom/android/launcher3/touch/q;->a:Lcom/android/launcher3/touch/q;

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    return-void
.end method


# virtual methods
.method public abstract adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
.end method

.method public abstract fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
.end method

.method public abstract getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
.end method

.method public abstract getChildStart(Landroid/view/View;)I
.end method

.method public abstract getClearAllSidePadding(Landroid/view/View;Z)I
.end method

.method public abstract getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
.end method

.method public abstract getDegreesRotated()F
.end method

.method public abstract getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
.end method

.method public abstract getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;",
            "Lcom/android/launcher3/DeviceProfile;",
            "[",
            "Landroid/view/View;",
            "I",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnd(Landroid/graphics/RectF;)F
.end method

.method public abstract getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract getFloatingTaskOffscreenTranslationTarget(Landroid/view/View;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F
.end method

.method public abstract getFloatingTaskPrimaryTranslation(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)Ljava/lang/Float;
.end method

.method public abstract getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
.end method

.method public abstract getMeasuredSize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryDirection(Landroid/view/MotionEvent;I)F
.end method

.method public abstract getPrimaryScale(Landroid/view/View;)F
.end method

.method public abstract getPrimaryScroll(Landroid/view/View;)I
.end method

.method public abstract getPrimarySize(Landroid/graphics/RectF;)F
.end method

.method public abstract getPrimarySize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryValue(FF)F
.end method

.method public abstract getPrimaryValue(II)I
.end method

.method public abstract getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
.end method

.method public abstract getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentsRtlSetting(Landroid/content/res/Resources;)Z
.end method

.method public abstract getRotation()I
.end method

.method public abstract getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getSecondaryDimension(Landroid/view/View;)I
.end method

.method public abstract getSecondaryTranslationDirectionFactor()I
.end method

.method public abstract getSecondaryValue(FF)F
.end method

.method public abstract getSecondaryValue(II)I
.end method

.method public abstract getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/FloatProperty;",
            "Landroid/util/FloatProperty;",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/FloatProperty;",
            "Landroid/util/FloatProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
.end method

.method public abstract getStart(Landroid/graphics/RectF;)F
.end method

.method public abstract getTaskDragDisplacementFactor(Z)I
.end method

.method public abstract getTaskMenuWidth(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;I)I
.end method

.method public abstract getTaskMenuX(FLandroid/view/View;Lcom/android/launcher3/DeviceProfile;F)F
.end method

.method public abstract getTaskMenuY(FLandroid/view/View;ILandroid/view/View;F)F
.end method

.method public abstract getUpDirection(Z)I
.end method

.method public abstract getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
.end method

.method public abstract isGoingUp(FZ)Z
.end method

.method public abstract isLayoutNaturalToLauncher()Z
.end method

.method public abstract measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
.end method

.method public abstract set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;II)V"
        }
    .end annotation
.end method

.method public abstract setFloatingTaskPrimaryTranslation(Landroid/view/View;FLcom/android/launcher3/DeviceProfile;)V
.end method

.method public abstract setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/android/launcher3/DeviceProfile;)V
.end method

.method public abstract setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
.end method

.method public abstract setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation
.end method

.method public abstract setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract setPrimaryScale(Landroid/view/View;F)V
.end method

.method public abstract setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation
.end method

.method public abstract setSecondaryScale(Landroid/view/View;F)V
.end method

.method public abstract setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
.end method

.method public abstract setSplitInstructionsParams(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;II)V
.end method

.method public abstract setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V
.end method

.method public abstract setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
.end method

.method public abstract setTaskOptionsMenuLayoutOrientation(Lcom/android/launcher3/DeviceProfile;Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V
.end method

.method public abstract updateSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V
.end method
