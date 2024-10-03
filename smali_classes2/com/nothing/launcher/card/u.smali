.class public abstract Lcom/nothing/launcher/card/u;
.super Lcom/nothing/cardhost/e;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;
.implements Lcom/nothing/launcher/widget/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/card/u$a;
    }
.end annotation


# static fields
.field public static final P:Lcom/nothing/launcher/card/u$a;


# instance fields
.field private final J:Lcom/android/launcher3/views/ActivityContext;

.field private K:Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private L:F

.field private M:F

.field private N:Landroid/graphics/Point;

.field private final O:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/card/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/u$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/card/u;->P:Lcom/nothing/launcher/card/u$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardhost/e;-><init>(Landroid/content/Context;Lw1/a;ZILkotlin/jvm/internal/i;)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "lookupContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/nothing/launcher/card/u;->L:F

    iput p1, p0, Lcom/nothing/launcher/card/u;->M:F

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/nothing/launcher/card/u;->N:Landroid/graphics/Point;

    new-instance p1, Lcom/nothing/launcher/card/u$b;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/card/u$b;-><init>(Lcom/nothing/launcher/card/u;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/u;->O:Ln5/e;

    return-void
.end method

.method private final Y(II)Z
    .locals 6

    iget-object v0, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lg3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/card/s;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/nothing/launcher/card/u;->K:Landroidx/core/util/Pair;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3, v4, v0}, Lu2/b;->a(Lcom/android/launcher3/views/ActivityContext;II)Landroidx/core/util/Pair;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/nothing/launcher/card/u;->K:Landroidx/core/util/Pair;

    invoke-static {v3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "this.second"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/u;->Z(F)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    move v1, v2

    :cond_1
    return v1
.end method

.method private final Z(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final a0()V
    .locals 2

    iget v0, p0, Lcom/nothing/launcher/card/u;->L:F

    iget v1, p0, Lcom/nothing/launcher/card/u;->M:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget v0, p0, Lcom/nothing/launcher/card/u;->L:F

    iget v1, p0, Lcom/nothing/launcher/card/u;->M:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private final getMultiTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/u;->O:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object p0
.end method


# virtual methods
.method public applyDisplaySpan(II)V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/nothing/launcher/card/u;->N:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, v0, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final getActivity()Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public getDisplaySpan()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/u;->N:Landroid/graphics/Point;

    return-object p0
.end method

.method public getReorderBounceScale()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/u;->M:F

    return p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/u;->L:F

    return p0
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/card/u;->getMultiTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nothing/launcher/card/u;->L:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/nothing/launcher/card/u;->L:F

    mul-float/2addr v1, p0

    float-to-int p0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/u;->Y(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/nothing/cardhost/e;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/nothing/launcher/card/u;->getDisplaySpan()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/u;->getDisplaySpan()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getAppWidgetInfo()Lcom/nothing/cardservice/CardWidgetMetaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->l0()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/nothing/launcher/card/u;->J:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lj3/a;->j(Ljava/lang/Integer;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/card/u;->M:F

    invoke-direct {p0}, Lcom/nothing/launcher/card/u;->a0()V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/card/u;->L:F

    invoke-direct {p0}, Lcom/nothing/launcher/card/u;->a0()V

    return-void
.end method
