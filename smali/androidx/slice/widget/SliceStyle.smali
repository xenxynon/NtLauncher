.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mGridBottomPadding:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mSubtitleColor:I

.field private mSubtitleSize:I

.field private mTintColor:I

.field private mTitleColor:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_0
    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    sget p1, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    sget p1, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getGridBottomPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return p0
.end method

.method public getGridSubtitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return p0
.end method

.method public getGridTitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return p0
.end method

.method public getGridTopPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return p0
.end method

.method public getHeaderSubtitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return p0
.end method

.method public getHeaderTitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return p0
.end method

.method public getSubtitleColor()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return p0
.end method

.method public getSubtitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return p0
.end method

.method public getTintColor()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return p0
.end method

.method public getTitleColor()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return p0
.end method

.method public getTitleSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return p0
.end method

.method public getVerticalGridTextPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return p0
.end method

.method public getVerticalHeaderTextPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return p0
.end method

.method public getVerticalTextPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return p0
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return-void
.end method
