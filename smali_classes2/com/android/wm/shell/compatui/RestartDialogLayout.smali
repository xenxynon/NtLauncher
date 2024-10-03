.class public Lcom/android/wm/shell/compatui/RestartDialogLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->i(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->j(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->k(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic h(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic i(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->performClick()Z

    return-void
.end method

.method private static synthetic j(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic k(Ljava/util/function/Consumer;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->g:Landroid/view/View;

    return-object p0
.end method

.method getDialogTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lu0/d;->x:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lu0/d;->w:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v2, Lu0/d;->y:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->g:Landroid/view/View;

    sget v2, Lu0/d;->B:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->i:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->g:Landroid/view/View;

    sget-object v2, Lcom/android/wm/shell/compatui/l;->g:Lcom/android/wm/shell/compatui/l;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/android/wm/shell/compatui/i;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/i;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setDismissOnClickListener(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/wm/shell/compatui/j;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/j;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    :goto_0
    sget v0, Lu0/d;->z:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setRestartOnClickListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget v0, Lu0/d;->w:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wm/shell/compatui/k;

    invoke-direct {v1, p1, v0}, Lcom/android/wm/shell/compatui/k;-><init>(Ljava/util/function/Consumer;Landroid/widget/CheckBox;)V

    move-object p1, v1

    :goto_0
    sget v0, Lu0/d;->A:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
