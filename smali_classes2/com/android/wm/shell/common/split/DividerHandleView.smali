.class public Lcom/android/wm/shell/common/split/DividerHandleView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/wm/shell/common/split/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/wm/shell/common/split/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Landroid/graphics/Paint;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerHandleView$a;

    const-string v2, "width"

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->n:Landroid/util/Property;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerHandleView$b;

    const-string v2, "height"

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->o:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lu0/b;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lu0/c;->j:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lu0/c;->i:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->i:I

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->m:I

    if-le p1, p2, :cond_0

    div-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->j:I

    if-le p2, p1, :cond_1

    div-int/lit8 p2, p2, 0x2

    :cond_1
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->k:I

    return-void
.end method

.method static synthetic a(Lcom/android/wm/shell/common/split/DividerHandleView;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    return p0
.end method

.method static synthetic b(Lcom/android/wm/shell/common/split/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    return p1
.end method

.method static synthetic c(Lcom/android/wm/shell/common/split/DividerHandleView;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->m:I

    return p0
.end method

.method static synthetic d(Lcom/android/wm/shell/common/split/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->m:I

    return p1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->m:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v0

    int-to-float v5, v1

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->l:I

    add-int/2addr v0, v3

    int-to-float v6, v0

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->m:I

    add-int/2addr v1, v0

    int-to-float v7, v1

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->g:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
