.class Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScroller"
.end annotation


# instance fields
.field private final mTargetPosition:I

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$000(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStart()V

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$100(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$300(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$402(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$100(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->access$200(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V

    return-void
.end method
