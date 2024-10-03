.class public Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
.super Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.source "SourceFile"


# instance fields
.field private final mContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->mContainer:Landroid/view/View;

    return-void
.end method

.method private computeLocationRelativeToContainer(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->mContainer:Landroid/view/View;

    if-eq v0, v1, :cond_2

    instance-of v1, v0, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/PagedView;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->computeLocationRelativeToContainer(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error case for child = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", child parent = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ABR-13059"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->computeLocationRelativeToContainer(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p0, v0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public bridge synthetic viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
