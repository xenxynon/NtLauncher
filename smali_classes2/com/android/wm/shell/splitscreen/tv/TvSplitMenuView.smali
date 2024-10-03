.class public Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;
    }
.end annotation


# instance fields
.field private g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lu0/d;->K:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lu0/d;->J:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lu0/d;->N:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lu0/d;->M:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lu0/d;->L:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;->b()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

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

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lu0/d;->K:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;->a(I)V

    goto :goto_2

    :cond_1
    sget v0, Lu0/d;->J:I

    if-ne p1, v0, :cond_2

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;->c(I)V

    goto :goto_2

    :cond_2
    sget v0, Lu0/d;->N:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Lu0/d;->M:I

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget v0, Lu0/d;->L:I

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;->d()V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->a()V

    return-void
.end method

.method setListener(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->g:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$a;

    return-void
.end method
