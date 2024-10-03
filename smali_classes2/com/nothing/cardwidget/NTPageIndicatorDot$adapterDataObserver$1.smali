.class public final Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/NTPageIndicatorDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$invalidateDot(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;->this$0:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->access$invalidateDot(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    return-void
.end method
