.class Lcom/android/launcher3/allapps/FloatingHeaderView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/FloatingHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    neg-int p1, p1

    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$200(Lcom/android/launcher3/allapps/FloatingHeaderView;)Z

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p3, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$300(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$200(Lcom/android/launcher3/allapps/FloatingHeaderView;)Z

    move-result p1

    if-eq p2, p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    :cond_2
    return-void
.end method
