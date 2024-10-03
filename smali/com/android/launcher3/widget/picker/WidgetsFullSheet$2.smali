.class Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$200(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
