.class public Lcom/android/launcher3/taskbar/bubbles/BubbleView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

.field private final mBubbleIcon:Landroid/widget/ImageView;

.field private final mBubbleSize:I

.field private mOnLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mOnLeft:Z

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e004e

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ef

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    const p1, 0x7f0b01f3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b008a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/BubbleView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Outline;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleSize:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    invoke-virtual {p1, p0, p0, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method


# virtual methods
.method getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method hideBadge()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method setBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getBadge()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method showBadge()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mOnLeft:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleView{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->mBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
