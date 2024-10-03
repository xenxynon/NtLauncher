.class Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleExpandedView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->d(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->b(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I

    move-result v3

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$f;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->e(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)F

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
