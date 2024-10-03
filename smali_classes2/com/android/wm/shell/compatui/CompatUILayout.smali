.class Lcom/android/wm/shell/compatui/CompatUILayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/CompatUILayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->j(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->m(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/compatui/CompatUILayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->o(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic j(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->r(Z)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic m(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic o(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->q(Z)V

    return-void
.end method

.method private s(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
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

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lu0/d;->I:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/wm/shell/compatui/e;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/e;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/wm/shell/compatui/f;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/f;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lu0/d;->H:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lu0/d;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lu0/f;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/wm/shell/compatui/d;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/d;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lu0/d;->j:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/wm/shell/compatui/a;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/a;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/wm/shell/compatui/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/g;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lu0/d;->h:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/wm/shell/compatui/c;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/c;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/wm/shell/compatui/h;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/h;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lu0/d;->i:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/compatui/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/b;-><init>(Lcom/android/wm/shell/compatui/CompatUILayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p0, 0x0

    throw p0
.end method

.method q(Z)V
    .locals 1

    sget v0, Lu0/d;->i:I

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->s(IZ)V

    return-void
.end method

.method r(Z)V
    .locals 1

    sget v0, Lu0/d;->H:I

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUILayout;->s(IZ)V

    return-void
.end method
